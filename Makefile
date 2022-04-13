BUILD_DIRS=build.*

all: release

amlogic-ng: export PROJECT=Amlogic-ng
amlogic-ng: export DISTRO=OpenPHT
amlogic-ng: export ARCH=arm

amlogic: export PROJECT=Amlogic
amlogic: export DISTRO=OpenPHT
amlogic: export ARCH=arm

rpi: export PROJECT=RPi
rpi: export DEVICE=RPi
rpi: export DISTRO=OpenPHT
rpi: export ARCH=arm

rpi2: export PROJECT=RPi
rpi2: export DEVICE=RPi2
rpi2: export DISTRO=OpenPHT
rpi2: export ARCH=arm

rpi4: export PROJECT=RPi
rpi4: export DEVICE=RPi4
rpi4: export DISTRO=OpenPHT
rpi4: export ARCH=arm

Slice: export PROJECT=RPi
Slice: export DEVICE=Slice
Slice: export DISTRO=OpenPHT
Slice: export ARCH=arm

Slice3: export PROJECT=RPi
Slice3: export DEVICE=Slice3
Slice3: export DISTRO=OpenPHT
Slice3: export ARCH=arm

generic: export PROJECT=Generic
generic: export DISTRO=OpenPHT
generic: export ARCH=x86_64

A64: export PROJECT=Allwinner
A64: export DEVICE=A64
A64: export DISTRO=OpenPHT
A64: export ARCH=arm

H3: export PROJECT=Allwinner
H3: export DEVICE=H3
H3: export DISTRO=OpenPHT
H3: export ARCH=arm

H6: export PROJECT=Allwinner
H6: export DEVICE=H6
H6: export DISTRO=OpenPHT
H6: export ARCH=arm

miqi: export PROJECT=Rockchip
miqi: export DEVICE=MiQi
miqi: export DISTRO=OpenPHT
miqi: export ARCH=arm

rk3328: export PROJECT=Rockchip
rk3328: export DEVICE=RK3328
rk3328: export DISTRO=OpenPHT
rk3328: export ARCH=arm

rk3399: export PROJECT=Rockchip
rk3399: export DEVICE=RK3399
rk3399: export DISTRO=OpenPHT
rk3399: export ARCH=arm

tinkerboard: export PROJECT=Rockchip
tinkerboard: export DEVICE=TinkerBoard
tinkerboard: export DISTRO=OpenPHT
tinkerboard: export ARCH=arm

miqi:
	./scripts/image mkimage

rk3328:
	./scripts/image mkimage

rk3399:
	./scripts/image mkimage

tinkerboard:
	./scripts/image mkimage

amlogic-ng:
	./scripts/image mkimage

amlogic:
	./scripts/image mkimage

rpi:
	./scripts/image mkimage

rpi2:
	./scripts/image mkimage

rpi4:
	./scripts/image mkimage

Slice:
	./scripts/image mkimage

Slice3:
	./scripts/image mkimage

generic:
	./scripts/image mkimage

A64:
	./scripts/image mkimage

H3:
	./scripts/image mkimage

H6:
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




