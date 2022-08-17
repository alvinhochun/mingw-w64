        .section .rdata,"dr"
        .globl _load_config_used
_load_config_used:
        .4byte _load_config_used__end - _load_config_used /* Size */
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
        .4byte __guard_check_icall_fptr /* GuardCFCheckFunction */
        .4byte __guard_dispatch_icall_fptr /* GuardCFCheckDispatch */
        .4byte __guard_fids_table /* GuardCFFunctionTable */
        .4byte __guard_fids_count /* GuardCFFunctionCount */
        .4byte __guard_flags /* GuardFlags */
        .2byte 0 /* CodeIntegrity_Flags */
        .2byte 0 /* CodeIntegrity_Catalog */
        .4byte 0 /* CodeIntegrity_CatalogOffset */
        .4byte 0 /* CodeIntegrity_Reserved */
        .4byte __guard_iat_table /* GuardAddressTakenIatEntryTable */
        .4byte __guard_iat_count /* GuardAddressTakenIatEntryCount */
        .4byte __guard_longjmp_table /* GuardLongJumpTargetTable */
        .4byte __guard_longjmp_count /* GuardLongJumpTargetCount */
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
        .4byte __enclave_config /* EnclaveConfigurationPointer */
        .4byte 0 /* VolatileMetadataPointer */
        .4byte __guard_eh_cont_table /* GuardEHContinuationTable */
        .4byte __guard_eh_cont_count /* GuardEHContinuationCount */
        .4byte 0 /* GuardXFGCheckFunctionPointer */
        .4byte 0 /* GuardXFGDispatchFunctionPointer */
        .4byte 0 /* GuardXFGTableDispatchFunctionPointer */
        .4byte 0 /* CastGuardOsDeterminedFailureMode */

_load_config_used__end:
