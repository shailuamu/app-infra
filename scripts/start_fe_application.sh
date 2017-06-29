echo 'Restarting Application'

tar -zvf webapp.tar.gz

ls

pm2 script reload

echo 'Restarted'