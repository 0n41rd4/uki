.PHONY: prepare install

prepare:
	sudo apt update
	sudo apt install -y systemd-ukify

install:
	sudo cp 11_uki /etc/grub.d/
	sudo cp yy-create-uki /etc/kernel/postinst.d/
	sudo mkdir -p /usr/lib/systemd/boot/efi/
	sudo cp ./linuxriscv64.efi.stub.noinitrd /usr/lib/systemd/boot/efi/
