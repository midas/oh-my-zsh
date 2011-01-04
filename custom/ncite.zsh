#!/bin/zsh
function download_ncite_logs() {
	if [ $1 ]; then
		LOG="production.log-${1}.gz"
		echo "Downloading NCite production log(s): ${LOG}"
		scp deployer@ncite.ibp.iberon.com:/var/www/deployer/ncite.com/current/log/$LOG . 
	else
		echo 'Downloading NCite production log(s): current'
		scp deployer@ncite.ibp.iberon.com:/var/www/deployer/ncite.com/current/log/production.log .
	fi
}
