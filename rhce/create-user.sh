#!/bin/bash
rhce_node=(
    "managenode01.compnete.local"
    "managenode02.compnete.local"
    "managenode03.compnete.local"
    "managenode04.compnete.local"
    "managenode05.compnete.local"
)
node_username="root"
node_password="C0mpn3t!"
for server in "${rhce_node[@]}"
do
    echo $server
    ssh $node_username@$server useradd ansible
    ssh $node_username@$server 'echo password | passwd --stdin ansible'
    ssh $node_username@$server 'echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible'
done
