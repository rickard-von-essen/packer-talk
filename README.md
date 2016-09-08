Packer.io Examples
==================

Prerequisites
-------------

- Install [Packer.io](https://packer.io/downloads.html),
  see [installation instructions](https://packer.io/docs/installation.html).
- Install [VirtualBox 5](https://www.virtualbox.org/wiki/Downloads)

Local Examples
--------------

- CentOS Vagrant box for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso centos-vagrant.json```

- Alpine VM image for VirtualBox/VMware Fusion & Workstation/Parallels Desktop
Build with: ```packer build -only=virtualbox-iso apline.json```

Cloud Examples
--------------

Install Puppet on CentOS 7.2 image on AWS EC2, Digital Ocean, OpenStack, GCE.

- Building on Digital Ocean requires environment variable
```DIGITALOCEAN_API_TOKEN``` set.

```DIGITALOCEAN_API_TOKEN=mySecretToken packer build -only=digitalocean cloud.json```

- Building on AWS requires environment variables ```AWS_PROFILE``` set and
  credentials configured with `aws configure --profile=<A_PROFILE>```.

```AWS_PROFILE=packer-demo packer build -only=amazon-ebs cloud.json```

- Building on OpenStack on [Elastx](https://ops.elastx.net) requires all the
  following environment variables (with example values):

```
set -x OS_AUTH_URL https://ops.elastx.net:5000/v2.0
set -x OS_TENANT_ID <your tenant id>
set -x OS_TENANT_NAME "essen"
set -x OS_PROJECT_NAME "essen"
set -x OS_USERNAME "rickard.von.essen@gmail.com"
set -x OS_PASSWORD <secret password>
set -x OS_REGION_NAME "regionOne"
```

With the above variables set run: ```packer build -only=openstack cloud.json```

- Building on Google Compute Engine - GCE requires that you have setup your
  credentials for gcloud. It requires the file
  `~/.config/gcloud/application_default_credentials.json`. See the the
  documentation on how to set this up.
