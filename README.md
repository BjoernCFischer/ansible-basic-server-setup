# ansible-basic-server-setup
Ansible playbooks for basic setup of a debian based server

Playbooks
---------

01_bootstrap.yml - Totally basic tasks: install python, set root password and create an uprivileged sudo user
02_basic_setup.yml - Basic server setup: install some more tools, aliases, set hostname, ssh config, firewall (thanks to geerlingguy)


Roles used
----------

 - install_python, see https://github.com/BjoernCFischer/ansible-install-python
 - root_password, see https://github.com/BjoernCFischer/ansible-root-password
 - sudo_user, see https://github.com/BjoernCFischer/ansible-sudo-user
 - determine_ssh_port, see TODO
 - basic_server, see TODO
 - geerlingguy.firewall, see https://galaxy.ansible.com/geerlingguy/firewall
 
How to use
----------

In a first step, execute the bootstrap playbook (depending on your server situation). This is done with root access, sets the root password and creates an unprivileged user account to work with later.

The second step is triggering the basic setup tasks by running the playbook of the same name. This is executed with the sudo user that was created while the bootstrapping.

License
-------

Public domain.

Author Information
------------------

Björn Fischer - @BjoernCFischer