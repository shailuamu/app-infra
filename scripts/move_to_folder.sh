FILE_NAME=$1
DESTINATION=$2
BUILD_COUNTER=$3

echo "Parameters"

echo $FILE_NAME

echo $DESTINATION

echo $BUILD_COUNTER

echo "Copy to exact folder"

destination_path=$DESTINATION/$BUILD_COUNTER

echo "DESTINATION Folder - "

echo $destination_path

sudo mkdir -p $destination_path

echo "DESTINATION FOLDER created"

ls $destination_path

echo "Moving report"

sudo mv $FILE_NAME/* $destination_path

echo "DONE"