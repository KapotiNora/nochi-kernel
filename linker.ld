/* Nochi Kernel Project Linker Script */
/* linker.ld */

ENTRY(_AsmHeadInit)

PHDRS
{
	mtbt PT_LOAD FLAGS(4); /* r-- */
	text PT_LOAD FLAGS(5); /* r-x */
	data PT_LOAD FLAGS(6); /* rw- */
	bss  PT_LOAD FLAGS(6); /* rw- */
	rodt PT_LOAD FLAGS(4); /* r-- */
}

SECTIONS
{
	. = 0x100000;
	
	kernstart = .;
	
	.multiboot2 : {
		*(.multiboot2)
	} : mtbt
	
	.text : {
		. = ALIGN(4);
		*(.text)
	} : text
	
	.data : {
		*(.data)
	} : data
	
	.rodata : {
		*(.rodata)
	} : rodt
	
	.bss : {
		*(.bss)
		*(COMMON)
	} : bss
	
	. = ALIGN(4096);
	
	kernend = .;
}


