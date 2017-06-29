echo 'Restarting Application'

tar zxvf webapp.tar.gz

ls

pm2 reload script

echo 'Restarted'