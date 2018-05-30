# Galaxy-Playbook-ACTF
An assortment of roles that initiates a new galaxy instance on the target host. This play-book installs a local Postgresql server, configures nginx and firewalld, then clones and configures galaxy and an assortment of bioinformatics tools.


TO USE:

Set the IP of the target host to install Galaxy on in the hosts file

Set the domain name that will resolve to that host locally in the group_vars/main.yml file
