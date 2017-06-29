FILE_NAME=$1
SOURCE_PATH=$2
DESTINATION=$3
BUILD_COUNTER_VAR=$4
HOST_ADD=$5

echo 'Starting copying Reports'
echo $HOST_ADD

eval BUILD_COUNTER='$'$BUILD_COUNTER_VAR

echo $BUILD_COUNTER

scp -o StrictHostKeyChecking=no -r $SOURCE_PATH ec2-user@$HOST_ADD:

ssh -o StrictHostKeyChecking=no ec2-user@$HOST_ADD 'bash -s' < move_to_folder.sh $FILE_NAME $DESTINATION $BUILD_COUNTER