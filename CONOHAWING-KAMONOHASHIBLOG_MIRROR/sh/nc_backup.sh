#!/bin/bash
source ./nc_const.sh

SYSDATE=`date '+%Y%m%d_%H%M%S'`
echo ${SYSDATE}': NEXTCLOUD$B$N%P%C%/%"%C%W$r3+;O$7$^$9(B'
#$B%a%s%F%J%s%9%b!<%I$K$9$k(B
php ${NEXTCLOUD_DIR}occ maintenance:mode --on
bash ./nc_backup_database.sh ${SYSDATE}
bash ./nc_backup_folder.sh ${SYSDATE} config nextcloud/config
bash ./nc_backup_folder.sh ${SYSDATE} nextcloud nextcloud
bash ./nc_backup_folder.sh ${SYSDATE} data data
#$B%a%s%F%J%s%9%b!<%I$r2r=|$9$k(B
php ${NEXTCLOUD_DIR}occ maintenance:mode --off
#$B40N;%a!<%k$rAw?.$9$k(B
echo '$B40N;%a!<%k$rAw?.$7$^$9(B'
php ./diskinfo.php ${TARGET_DIR} admin@sinceretechnology.com.au
echo ${SYSDATE}': $B$9$Y$F$N%P%C%/%"%C%W$,40N;$7$^$7$?(B'
