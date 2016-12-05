#! /bin/sh
################################################################################
# Script for install server setting
#
# @description :
#  각종 서비스 설치
#  1. 
#_password
# @author       bea su., JO. <chaos@freelogic.co.kr>
# @since        2012-12-29
# @copyright    bea su., JO.
################################################################################
# START CONF ==========================================================================
# default Config
sudo su


WEB_DAEMON_USER=www-data

#디렉토리 작성 및 권한 설정
# $1 = 디렉토리 $2 사용자 명 및 그룹명
function testDirMakeOwn(){
 DIR=$1
 USER=$2

	if test -d $DIR then;
		mkdir -m 775 -p $DIR
		echo "$DIR 작성"
		if [ ! -z "$USER" ]; then
		chown $USER:$USER $DIR
		echo "$DIR 에 대한 $USER 권한 작성"
		fi
	fi
}



cd /var/lib
dir_nginx_php7_fpm_document_Root="/var/html/www"
# 디렉토리가 있을 경우 메세지 출력
if test -d $dir_nginx_php7_fpm_document_Root
then mkdir
fi
