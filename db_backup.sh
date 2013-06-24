# take a backup of Database using pg_dump
# replace the postgres with Database username and the dbname with the Database name
# save it to a tar file
cd /var/Dropbox_db_backup/
pg_dump -U postgres -Fc dbname > $(date "+%Y%m%d.tar.gz")
# upload the DB backup to Dropbox
python uploader.py
