# Notice
This repository is no longer maintained

# Vagrant-MODx

MODx bootstrap for Vagrant based on https://github.com/scotch-io/scotch-box.

Read up on the Scotch Box at https://box.scotch.io/

This will setup a MODx env that it ready to run the setup at http://192.168.33.10/setup.

The MODx install will be in the directory of the Vagrantfile in /public (which gives /var/www/public in the VM).

# What this sctipts actually does...
- Downloads a copy of MODx
- Configure your local timezone

# Config
### MySQL
- User: root
- Password: root
- Database: scotchbox
