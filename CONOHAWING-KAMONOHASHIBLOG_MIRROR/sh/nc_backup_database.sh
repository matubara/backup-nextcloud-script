source ./nc_const.sh

if [ $# -eq 1 ]; then
SYSDATE=$1
mysqldump --defaults-extra-file=./nc_dbaccess.conf --single-transaction --single-transaction ${BACKUP_DATABASE} > ${BACKUP_DIR}${SYSDATE}_nextcloud_db.sql
echo '$B%G!<%?%Y!<%9%P%C%/%"%C%W$r40N;$7$^$7$?(B'
else
  echo '$B0z?t$,IT@5$G$9(B'
fi
