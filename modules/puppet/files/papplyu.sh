#!/bin/bash

sudo puppet apply /home/ubuntu/puppets/manifests/site.pp --modulepath=/home/centos/manifests/modules/ $*
