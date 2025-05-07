        org  0x5ccb ;23755


            ld   a, 2                ; 3E 02
            call 5633	             ; CD 01 16
            ld   a, "!"
            rst 16

	;NOTA: senza i seguenti non gira
	;ChatGPT:8bitworkshop, which expects a complete binary blob up to a certain length origin for subsequent data
        ;You're forcing the assembler to emit data up to address 0xFF57, meaning the binary spans from 0x5CCB to 0xFF57. Without it, the assembled file might end too early, missing bytes that the emulator expects (for instance, some buffers or stack space).
	;This is not a logic-related instruction in your program — it’s a hack/workaround to make the assembled binary work properly in the tool or emulator environment.
	org 0xff57 ;65367
        ;defines a single byte with the value 0x00 at the current origin
        defb 00h
