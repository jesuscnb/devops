SSH="sshpass -p az115combr ssh -o StrictHostKeyChecking=no root@10.100.10.115"
SCP="sshpass -p az115combr scp "
$SSH "cd /tmp && mkdir '$1' "
$SCP $2 root@10.100.10.115:/tmp/$1
$SSH "cd /tmp/'$1' && docker stack deploy -c '$2' '$1' --with-registry-auth && rm -Rf /tmp/'$1' "