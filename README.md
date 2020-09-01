# fips box builder

This is a project to build centos fips-enabled boxes for Vagrant.


## CentOS 8 Instructions

```
vagrant up
vagrant halt
vagrant package --output mynew.box
```

## CentOS 7 Instructions

1st, modify Vagrantfile per comments in it

```
vagrant up
vagrant halt
vagrant package --output mynew.box
```

## Potential Optimizations
Creating this with vagrant-libvirt 1.0.2 (F33) may result in disk space savings
compared to vagrant-libvirt 0.0.45 (F33). It may be needed for disard/trim to
work.

On F32, I did:
```
sudo dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/r/rubygem-fog-libvirt-0.7.0-3.fc33.noarch.rpm
sudo dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/v/vagrant-libvirt-0.1.2-2.fc34.noarch.rpm
```
