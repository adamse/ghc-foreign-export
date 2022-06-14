# How is a ffi export compiled/called?


```
Export.o:     file format elf64-x86-64

RELOCATION RECORDS FOR [.init_array]:
OFFSET           TYPE              VALUE
0000000000000000 R_X86_64_64       .text+0x00000000000000c0



Export.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <c_function>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 30          	sub    $0x30,%rsp
   c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00
  19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1d:	31 c0                	xor    %eax,%eax
  1f:	e8 00 00 00 00       	call   24 <c_function+0x24>
			20: R_X86_64_PLT32	rts_lock-0x4
  24:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  28:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  2c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  30:	48 89 d6             	mov    %rdx,%rsi
  33:	48 89 c7             	mov    %rax,%rdi
  36:	e8 00 00 00 00       	call   3b <c_function+0x3b>
			37: R_X86_64_PLT32	rts_mkInt-0x4
  3b:	48 89 c2             	mov    %rax,%rdx
  3e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  42:	be 00 00 00 00       	mov    $0x0,%esi
			43: R_X86_64_32	Export_zdfstableZZC0ZZCmainZZCExportZZCfoo_closure
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	call   4f <c_function+0x4f>
			4b: R_X86_64_PLT32	rts_apply-0x4
  4f:	48 89 c2             	mov    %rax,%rdx
  52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  56:	be 00 00 00 00       	mov    $0x0,%esi
			57: R_X86_64_32	base_GHCziTopHandler_runIO_closure
  5b:	48 89 c7             	mov    %rax,%rdi
  5e:	e8 00 00 00 00       	call   63 <c_function+0x63>
			5f: R_X86_64_PLT32	rts_apply-0x4
  63:	48 89 c1             	mov    %rax,%rcx
  66:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  6a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  6e:	48 89 ce             	mov    %rcx,%rsi
  71:	48 89 c7             	mov    %rax,%rdi
  74:	e8 00 00 00 00       	call   79 <c_function+0x79>
			75: R_X86_64_PLT32	rts_inCall-0x4                           -- rts_inCall
  79:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  7d:	48 89 c6             	mov    %rax,%rsi
  80:	bf 00 00 00 00       	mov    $0x0,%edi
			81: R_X86_64_32	.rodata
  85:	e8 00 00 00 00       	call   8a <c_function+0x8a>
			86: R_X86_64_PLT32	rts_checkSchedStatus-0x4
  8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	call   96 <c_function+0x96>
			92: R_X86_64_PLT32	rts_getInt-0x4
  96:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  9a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  9e:	48 89 c7             	mov    %rax,%rdi
  a1:	e8 00 00 00 00       	call   a6 <c_function+0xa6>
			a2: R_X86_64_PLT32	rts_unlock-0x4
  a6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  aa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  ae:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  b5:	00 00
  b7:	74 05                	je     be <c_function+0xbe>
  b9:	e8 00 00 00 00       	call   be <c_function+0xbe>
			ba: R_X86_64_PLT32	__stack_chk_fail-0x4
  be:	c9                   	leave
  bf:	c3                   	ret

00000000000000c0 <stginit_export_Export>:
  c0:	f3 0f 1e fa          	endbr64
  c4:	55                   	push   %rbp
  c5:	48 89 e5             	mov    %rsp,%rbp
  c8:	bf 00 00 00 00       	mov    $0x0,%edi
			c9: R_X86_64_32	.data+0x60
  cd:	e8 00 00 00 00       	call   d2 <stginit_export_Export+0x12>
			ce: R_X86_64_PLT32	registerForeignExports-0x4
  d2:	90                   	nop
  d3:	5d                   	pop    %rbp
  d4:	c3                   	ret
```
