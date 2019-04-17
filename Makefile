# neutrino 2019 summer
# IIE CAS

### vivado source
defaultconfig_v = verilog/DefaultConfig.v
firmware_hex = verilog/firmware.hex

bootrom_img = rocket-chip/bootrom/bootrom.img
bootrom_s = rocket-chip/bootrom/bootrom.S

vivado_source : $(defaultconfig_v) $(firmware_hex)

$(defaultconfig_v) : $(bootrom_img)
	cd rocket-chip/vsim && $(MAKE) verilog && cp generated-src/freechips.rocketchip.system.DefaultConfig.v ../verilog/DefaultConfig.v
	@echo "#################################"
	@echo "##### DefaultConfig.v built #####"
	@echo "#################################"

$(bootrom_img) : $(bootrom_s)
	cd rocket-chip/bootrom && $(MAKE)
	@echo "#################################"
	@echo "#####   Bootrom.img built   #####"
	@echo "#################################"

$(firmware_hex) : 
	cd firmware && $(MAKE) all
	@echo "#################################"
	@echo "#####  firmware.hex built   #####"
	@echo "#################################"


### sd_image
boot_elf = boot.elf

sd_image : $(boot_elf)

$(boot_elf) : $(VMLINUX)
ifndef VMLINUX
	$(error Please set VMLINUX. Please take a look at README)
endif
	cd riscv-pk/build && $(MAKE) VMLINUX=$(VMLINUX) && cp bbl ../../boot.elf
	@echo "#################################"
	@echo "#####     boot.elf built    #####"
	@echo "#################################"

### clean
clean:
	cd rocket-chip/vsim && $(MAKE) clean
	cd firmware && $(MAKE) clean
	cd riscv-pk/build && $(MAKE) clean
	-rm $(defaultconfig_v)
	-rm $(firmware_hex)
	-rm $(boot_elf)