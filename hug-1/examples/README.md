Vagrant: NetBSD 7.0.2 - netbsd.json
-----------------------------------

`packer build -only=virtualbox-iso netbsd.json`

Can also build boxes for _Parallels Desktop for Mac_ and _VMware Fusion/Workstation/Player_.

Alpine linux 3.4.5 - alpine.json
--------------------------------

`packer build -only=virtualbox-iso alpine.json`

Can also build VM's for _Parallels Desktop for Mac_ and _VMware Fusion/Workstation/Player_.

AWS: CentOS - centos-ebs-puppet.json
-------------------------------

`AWS_PROFILE=<your build profile> packer build -only=amazon-ebs centos-ebs-puppet-base.json`

AWS & GCE: Debian - debian-gce-aws.json
----------------------------

`AWS_PROFILE=<your build profile> packer build -var gce_proj=<gce_proj> debian-gce-aws.json`
