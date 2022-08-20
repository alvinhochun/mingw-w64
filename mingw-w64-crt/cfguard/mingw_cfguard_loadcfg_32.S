#if defined(__i386__)
#  define SYM(x) _##x
#else
#  define SYM(x) x
#endif

        .section .rdata,"dr"
        .weak SYM(_load_config_used)
        .balign 4
SYM(_load_config_used):
        .4byte SYM(_load_config_used__end) - SYM(_load_config_used) /* Size */
        .4byte 0 /* TimeDateStamp */
        .2byte 0 /* MajorVersion */
        .2byte 0 /* MinorVersion */
        .4byte 0 /* GLobalFlagsClear */
        .4byte 0 /* GlobalFlagsSet */
        .4byte 0 /* CriticalSectionDefaultTimeout */
        .4byte 0 /* DeCommitFreeBlockThreshold */
        .4byte 0 /* DeCommitTotalFreeThreshold */
        .4byte 0 /* LockPrefixTable */
        .4byte 0 /* MaximumAllocationSize */
        .4byte 0 /* VirtualMemoryThreshold */
        .4byte 0 /* ProcessAffinityMask */
        .4byte 0 /* ProcessHeapFlags */
        .2byte 0 /* CSDVersion */
        .2byte 0 /* DependentLoadFlags */
        .4byte 0 /* EditList */
        .4byte 0 /* SecurityCookie */
        .4byte 0 /* SEHandlerTable */
        .4byte 0 /* SEHandlerCount */
        .4byte SYM(__guard_check_icall_fptr) /* GuardCFCheckFunction */
        /*
        GuardCFCheckDispatch should be set to 0 outside of x86_64.
        Ref: https://docs.microsoft.com/en-us/windows/win32/secbp/pe-metadata
        */
        .4byte 0 /* GuardCFCheckDispatch */
        .4byte SYM(__guard_fids_table) /* GuardCFFunctionTable */
        .4byte SYM(__guard_fids_count) /* GuardCFFunctionCount */
        .4byte SYM(__guard_flags) /* GuardFlags */
        .2byte 0 /* CodeIntegrity_Flags */
        .2byte 0 /* CodeIntegrity_Catalog */
        .4byte 0 /* CodeIntegrity_CatalogOffset */
        .4byte 0 /* CodeIntegrity_Reserved */
        .4byte SYM(__guard_iat_table) /* GuardAddressTakenIatEntryTable */
        .4byte SYM(__guard_iat_count) /* GuardAddressTakenIatEntryCount */
        .4byte SYM(__guard_longjmp_table) /* GuardLongJumpTargetTable */
        .4byte SYM(__guard_longjmp_count) /* GuardLongJumpTargetCount */
        .4byte 0 /* DynamicValueRelocTable */
        .4byte 0 /* CHPEMetadataPointer */
        .4byte 0 /* GuardRFFailureRoutine */
        .4byte 0 /* GuardRFFailureRoutineFunctionPointer */
        .4byte 0 /* DynamicValueRelocTableOffset */
        .2byte 0 /* DynamicValueRelocTableSection */
        .2byte 0 /* Reserved2 */
        .4byte 0 /* GuardRFVerifyStackPointerFunctionPointer */
        .4byte 0 /* HotPatchTableOffset */
        .4byte 0 /* Reserved3 */
        .4byte SYM(__enclave_config) /* EnclaveConfigurationPointer */
        .4byte 0 /* VolatileMetadataPointer */
        .4byte SYM(__guard_eh_cont_table) /* GuardEHContinuationTable */
        .4byte SYM(__guard_eh_cont_count) /* GuardEHContinuationCount */
        .4byte 0 /* GuardXFGCheckFunctionPointer */
        .4byte 0 /* GuardXFGDispatchFunctionPointer */
        .4byte 0 /* GuardXFGTableDispatchFunctionPointer */
        .4byte 0 /* CastGuardOsDeterminedFailureMode */

SYM(_load_config_used__end):
