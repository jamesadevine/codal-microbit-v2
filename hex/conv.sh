arm-none-eabi-objcopy -I ihex s132_nrf52_7.3.0_softdevice.hex -O binary s132_nrf52_7.3.0_softdevice.bin
arm-none-eabi-objcopy --rename-section .data=.softdevice -I binary -O elf32-littlearm -B arm s132_nrf52_7.3.0_softdevice.bin ../lib/softdevice.o
arm-none-eabi-objcopy -I ihex s132_mbr.hex -O binary s132_mbr.bin
arm-none-eabi-objcopy --rename-section .data=.mbr -I binary -O elf32-littlearm -B arm s132_mbr.bin ../lib/mbr.o