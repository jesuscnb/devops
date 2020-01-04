SSH="ssh -o StrictHostKeyChecking=no -i /scripts/virtus.pem ubuntu@ec2-52-5-156-117.compute-1.amazonaws.com"
SCP="scp -o StrictHostKeyChecking=no -i /scripts/virtus.pem "
$SSH "cd /tmp && mkdir '$1' "
$SCP $2 ubuntu@ec2-52-5-156-117.compute-1.amazonaws.com:/tmp/$1
$SSH "cd /tmp/'$1' && docker login -u adrianokowalski -p kowalski && docker stack deploy -c '$2' '$1' --with-registry-auth && rm -Rf /tmp/'$1' "