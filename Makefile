BUILD_DIRS=build.*

all: release

amlogic-ng: export PROJECT=Amlogic-ng
amlogic-ng: export DISTRO=OpenPHT
amlogic-ng: export ARCH=arm

amlogic: export PROJECT=Amlogic
amlogic: export DISTRO=OpenPHT
amlogic: export ARCH=arm

rpi2: export PROJECT=RPi
rpi2: export DEVICE=RPi2
rpi2: export DISTRO=OpenPHT
rpi2: export ARCH=arm

pc: export PROJECT=Generic
pc: export DISTRO=OpenPHT
pc: export ARCH=x86_64

amlogic-ng:
	./scripts/image mkimage

amlogic:
	./scripts/image mkimage

rpi2:
	./scripts/image mkimage

pc:
	./scripts/image mkimage

system:
	./scripts/image

release:
	./scripts/image release

image:
	./scripts/image mkimage

noobs:
	./scripts/image noobs

clean:
	rm -rf $(BUILD_DIRS)/* $(BUILD_DIRS)/.stamps

distclean:
	rm -rf ./.ccache ./$(BUILD_DIRS)

src-pkg:
	tar cvJf sources.tar.xz sources .stamps

pht-clean:
	rm -rf $(BUILD_DIRS)/.stamps/plexht/build_* 
	rm -rf $(BUILD_DIRS)/.stamps/OpenPHT-settings/build_* 
	rm -rf $(BUILD_DIRS)/OpenPHT-settings-1.9 
	rm -rf $(BUILD_DIRS)/plexht-1.9
	@echo 
	@echo OpenPHT files cleaned from build dir.




