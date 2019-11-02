;------------------------------------------------------------------------------ ;
; Copyright (c) 2018, Intel Corporation. All rights reserved.<BR>
; SPDX-License-Identifier: BSD-2-Clause-Patent
;
; Module Name:
;
;   Lfence.nasm
;
; Abstract:
;
;   Performs a serializing operation on all load-from-memory instructions that
;   were issued prior to the call of this function.
;
; Notes:
;
;------------------------------------------------------------------------------

    DEFAULT REL
    SECTION .text

;------------------------------------------------------------------------------
; VOID
; EFIAPI
; AsmLfence (
;   VOID
;   );
;------------------------------------------------------------------------------
global AsmLfence
AsmLfence:
    lfence
    ret