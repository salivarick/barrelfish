OUTPUT_FORMAT("elf64-x86-64")
OUTPUT_ARCH("i386:x86-64")
_start_kernel = 0x100000;
SECTIONS {
        . = ALIGN(4k);
        .text 0x100000 : ALIGN(4k)
        {
                *(.text);
        }
        _end_kernel_text = .;
        . = ALIGN(4k);
        .rodata . :
        {
                *(.rodata);
        }
        .bss . :
        {
                *(.bss);
        }
        _end_kernel = .;
        /DISCARD/ :
        {
                *(.eh_frame);
                *(.eh_frame_hdr);
  *(.note.gnu.build-id);
                *(.interp);
                *(.dynamic);
        }
}
