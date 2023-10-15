#!/bin/bash

ansible -b all -m yum_repository -a 'name=EX294 description="EX294 BaseOS Repository" baseurl=http://content.compnete.local/BaseOS gpgkey=http://content.compnete.local/RPM-GPG-KEY-redhat-release enabled=1 gpgcheck=1'
ansible -b  all -m yum_repository -a 'name=EXX294 description="EX294 AppStream Repository" baseurl=http://content.compnete.local/AppStream gpgkey=http://content.compnete.local/RPM-GPG-KEY-redhat-release enabled=1 gpgcheck=1'
