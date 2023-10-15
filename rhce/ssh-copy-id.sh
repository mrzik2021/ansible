#!/bin/bash
rhce_node=(
    "managenode01.compnete.local"
    "managenode02.compnete.local"
    "managenode03.compnete.local"
    "managenode04.compnete.local"
    "managenode05.compnete.local"
)
node_username="ansible"
node_password="password"
for server in "${rhce_node[@]}"
do
    echo $server
    sshpass -p $node_password ssh-copy-id -o StrictHostKeyChecking=no $node_username@$server
done
