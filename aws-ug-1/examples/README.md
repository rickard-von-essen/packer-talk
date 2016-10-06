CentOS - centos-ebs-puppet.json
-------------------------------

`AWS_PROFILE=<your build profile> packer build -only=amazon-ebs centos-ebs-puppet-base.json`

Debian - debian-gce-aws.json
----------------------------

`AWS_PROFILE=<your build profile> packer build -var gce_proj=<gce_proj> debian-gce-aws.json`

Amazon Linux - chroot-amazon-linux.json
---------------------------------------

Boot a Amazon Linux EC2 instance with the required instance profile, see the docs.
Login and run:

`packer build chroot-amazon-linux.json`

Arch Linux - chroot-arch-linux-from-scratch.json
------------------------------------------------

Boot a Arch linux EC2 instance with the required instance profile, see the docs.
It adds you public key from the kaypair to the root user. Login and run:

`pacman -Syu arch-install-scripts parted`

`packer build chroot-arch-linux-from-scratch.json`

Requires packer 0.11.0 (unreleased)
