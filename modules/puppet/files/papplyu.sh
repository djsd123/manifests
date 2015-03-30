#!/bin/bash

sudo puppet apply /home/ubuntu/puppet/manifests/site.pp --modulepath=/home/ubuntu/puppet/modules/ $*
