#if defined(__x86_64__)

static void __guard_check_icall_dummy() {
    // The target address is passed as a parameter in an arch-specific manner,
    // however it is not specified how on x86_64 because
    // __guard_dispatch_icall_fptr is used instead.
    // My guess would be that it's passed on %rcx, but it doesn't really matter
    // here because this is a no-op anyway.
}


// When CFGuard is not supported, directly tail-call the target address, which
// is passed via %rax.
// This is intentionally declared as _not_ a function pointer, so that Clang
// does not mark the jmp instruction as a valid call target for CFGuard.
extern void *__guard_dispatch_icall_dummy;
__asm__(
    "__guard_dispatch_icall_dummy:\n"
    "    jmp *%rax\n"
);

#elif defined(__i386__) || defined(__aarch64__) || defined(__arm__)

// FIXME: Check correctness.

static void __guard_check_icall_dummy() {
    // The target address is passed via %ecx (x86), X15 (aarch64) or R0 (arm).
}

static void __guard_dispatch_icall_dummy() {
    // When CFGuard is not supported, this should directly tail-call the target
    // address, however it is not specified how on x86, aarch64 and arm because
    // __guard_check_icall_fptr is used instead.
    // This really shouldn't be reached.
    __builtin_trap();
}

#else
#   error "CFGuard support is unimplemented for the current architecture."
#endif

__asm__(".section .00cfg,\"dr\"");

__attribute (( section (".00cfg") ))
volatile void *__guard_check_icall_fptr = &__guard_check_icall_dummy;

__attribute (( section (".00cfg") ))
volatile void *__guard_dispatch_icall_fptr = &__guard_dispatch_icall_dummy;
