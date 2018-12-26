#!/bin/bash

if [ $# -eq 1 ]; then
    if [ $1 = "p" ]; then 
        ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook ./playbookProd.yml
    elif [ $1 = "t" ]; then 
        ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook ./playbookTest.yml
    fi
    if [ $1 != "p" ] && [ $1 != "t" ]; then
        echo "Wrong Parameter"
        echo "Please insert a paramenter:"
        echo "p --> Production Deployment"
        echo "t --> Test Deployment"
    fi
elif [ 1 ]; then 
    echo "Please insert a paramenter:"
    echo "p --> Production Deployment"
    echo "t --> Test Deployment"
fi
