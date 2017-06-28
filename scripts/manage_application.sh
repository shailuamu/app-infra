HOST_ADD=$1

echo 'Starting application on Host Address - '
echo $HOST_ADD

ssh -o StrictHostKeyChecking=no ec2-user@$HOST_ADD 'bash -s' < start_application.sh