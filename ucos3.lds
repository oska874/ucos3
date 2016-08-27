ENTRY(_start)
SECTIONS
{
  .text      :
  {
    *(.text.entry)
    *(.text)
    . = ALIGN(4096);
  }
  . = ALIGN(4096);
  etext = .; _etext = .;
  . = ALIGN(4096);
  .data    :
  {
    *(.data)
    . = ALIGN(4096);
  }
  edata = .; _edata = .;
  . = ALIGN(4096);
  .sbss      :
  {
    *(.sbss) *(.sbss.*) *(.scommon) 
    . = ALIGN(4096);
  }

   .bss       :
  {
    *(.dynbss) *(.bss) *(.bss.*) *(COMMON) *(.gnu.linkonce.b*)
    . = ALIGN(4096);
  }

  end = .; _end = .;

  . = 0xC800000;

  .shared : 
  {
    *(.shared.bss)
    . = ALIGN(4096);
  }

  .tdata       : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
  .tbss        : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
}
