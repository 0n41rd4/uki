.PHONY: prepare install

prepare:
	sudo apt update
	sudo apt install -y systemd-ukify systemd-boot-efi

install:
	sudo cp 11_uki /etc/grub.d/
	sudo cp yy-create-uki /etc/kernel/postinst.d/
