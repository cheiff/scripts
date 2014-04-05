#!/bin/sh
source /root/.mysqluser
# a file containing
# USER
# PASS
# BACKUPPATH 
# ZIP (y/n) # whether to bzip the databases or not
# DATE (y/n) # whether to append the date at the end or not
DATABASES="$(mysql --user=$USER --password=$PASS -Bse 'show databases')"
#echo $DATABASES
cd $BACKUPPATH
if [ "$DATE" == "y" ]; then
  APPENDDATE="-"$(date +%m-%d-%y)
else
  APPENDDATE=""
fi
for db in ${DATABASES[@]}
do
  if [ $db == "information_schema" ]
  then
    continue
  fi
#  echo ${db}-$(date +%m-%d-%y).sql.bz2 is being saved in $BACKUPPATH 
  if [ "$ZIP" == "y" ];then
    mysqldump --user=$USER --password=$PASS $db --single-transaction -R | bzip2 -c > ${db}.sql.bz2
  else
    mysqldump --user=$USER --password=$PASS $db --single-transaction -R > ${db}.sql
  fi
done

