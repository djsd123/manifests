#!/bin/bash

sudo puppet apply /home/centos/puppet/manifests/site.pp --modulepath=/home/centos/puppet/modules/ $*
