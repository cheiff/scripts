#!/bin/sh
source /root/.mysqluser
# a file containing
# USER
# PASS
# BACKUPPATH 
# ZIP (y/n) #(whether to bzip the databases or not()
DATABASES="$(mysql --user=$USER --password=$PASS -Bse 'show databases')"
#echo $DATABASES
cd $BACKUPPATH
for db in ${DATABASES[@]}
do
  if [ $db == "information_schema" ]
  then
    continue
  fi
#  echo ${db}-$(date +%m-%d-%y).sql.bz2 is being saved in $BACKUPPATH 
  if [ "$ZIP" == "y" ];then
    mysqldump --user=$USER --password=$PASS $db --single-transaction -R | bzip2 -c > ${db}-$(date +%m-%d-%y).sql.bz2
  else
    mysqldump --user=$USER --password=$PASS $db --single-transaction -R > ${db}-$(date +%m-%d-%y).sql
  fi
done

