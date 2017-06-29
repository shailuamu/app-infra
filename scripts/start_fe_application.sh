echo 'Restarting Application'

tar -zvf webapp.tar.gz

ls

pm2 reload script

echo 'Restarted'