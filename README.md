# Vagrant configuration for a Typo3 installation.

This is a [vagrant](http://www.vagrantup.com) configuration using [chef](http://www.opscode.com/chef/) to install a virtual machine using the [ubuntu](http://www.ubuntu.com) linux distribution hosting the latest stable version of [typo3](http://typo3.org).

The /var/www/fileadmin folder is synchronized to src/fileadmin.

## Details

* webserver port is forwarded from port 8080
* mysql root password is "password"

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://www.vagrantup.com)
* [chef](http://www.opscode.com/chef/)

