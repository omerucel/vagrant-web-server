#! /bin/bash

set -u
export SHELL_SCRIPT_MODULE_PATH="/vagrant/vagrant/modules"
export APACHE_VHOST_FILE="/vagrant/vagrant/files/vhost.conf"
source "${SHELL_SCRIPT_MODULE_PATH}/lib.sh"

runModules "base" "mysql" "apache2" "php5" "php5-curl" "php5-gd" "php5-mcrypt" "php5-mysql" "php5-xdebug"

service apache2 restart
