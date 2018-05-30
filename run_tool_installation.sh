#!/bin/bash

ansible-playbook -i ./hosts ./galaxy-tools.yml --ask-pass --ask-vault-pass

