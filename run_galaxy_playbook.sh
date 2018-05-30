#!/bin/bash

ansible-playbook -i ./hosts ./galaxy.yml --ask-pass --ask-vault-pass

