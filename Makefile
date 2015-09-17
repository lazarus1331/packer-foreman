all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""

qemu: buildqemu beep

qemudebug: buildqemudebug beep

vagrant: buildvagrant beep

vagrantdebug: buildvagrantdebug beep

buildqemudebug:
	/usr/bin/time -v packer build -debug --only=qemu debian-8.2-foreman.json

buildqemu:
	/usr/bin/time -v packer build --only=qemu debian-8.2-foreman.json

buildvagrantdebug:
	/usr/bin/time -v packer build -debug --only=virtualbox-iso debian-8.2-foreman.json

buildvagrant:
	/usr/bin/time -v packer build --only=virtualbox-iso debian-8.2-foreman.json

beep:
	@echo "beep"
	@aplay /usr/share/sounds/alsa/Front_Center.wav
