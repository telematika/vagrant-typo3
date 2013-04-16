#!/usr/bin/env bash

TYPO3_SRC=typo3.tar.gz
TYPO3_DIR=/usr/local/share/typo3
TYPO3_WWW=/var/www

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y apache2 mysql-server-5.5 libapache2-mod-php5 php5-curl php5-gd php5-imagick php5-mysql

wget --quiet http://get.typo3.org/blank -O "${TYPO3_SRC}"
tar zxf "${TYPO3_SRC}" --strip-components 1 -C "${TYPO3_WWW}"

#mkdir -p "${TYPO3_DIR}"
#mv "${TYPO3_WWW}/typo3_src/*" "${TYPO3_DIR}/"
#rm -f "${TYPO3_WWW}/index.php"
#rm -f "${TYPO3_WWW}/t3lib"
#rm -f "${TYPO3_WWW}/typo3"
#rm -rf "${TYPO3_WWW}/typo3_src*"
#
#ln -s "${TYPO3_DIR}" /var/www/typo3_src
#ln -s /var/www/typo3_src/t3lib /var/www/t3lib
#ln -s /var/www/typo3_src/typo3 /var/www/typo3
#ln -s /var/www/typo3_src/index.php /var/www/index.php

chown -Rfh www-data:www-data "${TYPO3_WWW}/fileadmin" "${TYPO3_WWW}/typo3temp" "${TYPO3_WWW}/typo3conf" "${TYPO3_WWW}/uploads"

