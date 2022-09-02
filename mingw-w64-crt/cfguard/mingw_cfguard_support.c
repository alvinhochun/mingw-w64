#if defined(__x86_64__)

// The target address is passed as a parameter in an arch-specific manner,
// however it is not specified how on x86_64 because __guard_dispatch_icall_fptr
// is used instead. My guess would be that it's passed on %rcx, but it doesn't
// really matter here because this is a no-op anyway.
static void __guard_check_icall_dummy(void) {}

// When CFGuard is not supported, directly tail-call the target address, which
// is passed via %rax.
__asm__(
    "__guard_dispatch_icall_dummy:\n"
    "    jmp *%rax\n"
);

// This is intentionally declared as _not_ a function pointer, so that the
// jmp instruction is not included as a valid call target for CFGuard.
extern void *__guard_dispatch_icall_dummy;

#elif defined(__i386__) || defined(__aarch64__) || defined(__arm__)

// The target address is passed via %ecx (x86), X15 (aarch64) or R0 (arm),
// but it doesn't really matter here because this is a no-op anyway.
static void __guard_check_icall_dummy(void) {}

#else
#   error "CFGuard support is unimplemented for the current architecture."
#endif

// I am not sure about the `.00cfg` section. This is just an attempt to follow
// what VC runtime defines -- it places all the guard check function pointers
// inside this section. The MSVC linker appears to merge this section into
// `.rdata`, but LLD does not do this at the time of writing.
// This section should be readonly data. The only thing that modifies these
// pointers is the PE image loader.

__asm__(".section .00cfg,\"dr\"");

__attribute__(( section (".00cfg") ))
void *__guard_check_icall_fptr = &__guard_check_icall_dummy;

#if defined(__x86_64__)

__attribute__(( section (".00cfg") ))
void *__guard_dispatch_icall_fptr = &__guard_dispatch_icall_dummy;

#endif
