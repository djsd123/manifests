#!/bin/bash

sudo puppet apply /home/centos/manifests/manifests/site.pp --modulepath=/home/centos/manifests/modules/ $*
