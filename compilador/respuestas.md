## Respuestas ompre 

1. del pre-procesador esperamos que interprete la informacion despues del #(los headers) , include pegara la informacion que esta en calculator.h y a la vez leera lo que haya en # del archivo y recursivamente ira pegando si tiene la sentencia include en mi codigo, luego el archivo .pp.c tiene pegado los include que estaban en los #

compilacion 1 pasara el codigo que teneemos en el .pp.c a codigo assembler (.asm) que es agnostico de cualquier tipo de lenguaje el cual es mas simple para luego ser pasado a codigo de maquina.

compilacion 2 pasa el codigo assembler a codigo maquina y crea un objeto .o 

linkeo crea el ejecutable a partir de los objetos 


2. el pre procesador agrego al codigo todo lo que estaba en los archivos .h en los headers 

3. add_numbers:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc



main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR [rbp-20], edi
	mov	QWORD PTR [rbp-32], rsi
	mov	esi, 11
	mov	edi, 31
	call	add_numbers
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

4. 000000000000003c T add_numbers
   0000000000000000 T main
                    U printf

U significa que todavia no esta definido 
T significa texto, funciones que se pueden ejecutar 
si es en mayuscula son variables que pertenecen a una unidad pero no pueden ser accedidas por fuera 

5.el ejecutable  tiene variables, cosas locales , mas cosas indefinidas, cosas que tambien se pueden acceder desde otras unidades 

0000000000400562 T add_numbers
0000000000601038 B __bss_start
0000000000601038 b completed.7585
0000000000601028 D __data_start
0000000000601028 W data_start
0000000000400460 t deregister_tm_clones
00000000004004e0 t __do_global_dtors_aux
0000000000600e18 t __do_global_dtors_aux_fini_array_entry
0000000000601030 D __dso_handle
0000000000600e28 d _DYNAMIC
0000000000601038 D _edata
0000000000601040 B _end
00000000004005f4 T _fini
0000000000400500 t frame_dummy
0000000000600e10 t __frame_dummy_init_array_entry
0000000000400778 r __FRAME_END__
0000000000601000 d _GLOBAL_OFFSET_TABLE_
                 w __gmon_start__
000000000040062c r __GNU_EH_FRAME_HDR
00000000004003c8 T _init
0000000000600e18 t __init_array_end
0000000000600e10 t __init_array_start
0000000000400600 R _IO_stdin_used
                 w _ITM_deregisterTMCloneTable
                 w _ITM_registerTMCloneTable
0000000000600e20 d __JCR_END__
0000000000600e20 d __JCR_LIST__
                 w _Jv_RegisterClasses
00000000004005f0 T __libc_csu_fini
0000000000400580 T __libc_csu_init
                 U __libc_start_main@@GLIBC_2.2.5
0000000000400526 T main
                 U printf@@GLIBC_2.2.5
00000000004004a0 t register_tm_clones
0000000000400430 T _start
0000000000601038 D __TMC_END__




