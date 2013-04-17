#!/usr/bin/env bash

TYPO3_SRC=typo3.tar.gz
TYPO3_DIR=/usr/local/share/typo3
TYPO3_WWW=/var/www

rm -f "${TYPO3_WWW}/index.html"

if [[ ! -f "${TYPO3_WWW}/index.php" ]]; then
  wget --quiet http://get.typo3.org/blank -O "${TYPO3_SRC}"
  tar zxf "${TYPO3_SRC}" --strip-components 1 -C "${TYPO3_WWW}"
  touch "${TYPO3_WWW}/typo3conf/ENABLE_INSTALL_TOOL"
  chown -Rfh www-data:www-data "${TYPO3_WWW}/fileadmin" "${TYPO3_WWW}/typo3temp" "${TYPO3_WWW}/typo3conf" "${TYPO3_WWW}/uploads"
fi
