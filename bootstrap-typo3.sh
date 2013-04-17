#!/usr/bin/env bash

TYPO3_SRC=typo3.tar.gz
TYPO3_DIR=/usr/local/share/typo3
TYPO3_WWW=/var/www

rm -f "${TYPO3_WWW}/index.html"

if [[ ! -f "${TYPO3_WWW}/index.php" ]]; then
  echo "Downloading typo3..."
  wget --quiet http://get.typo3.org/blank -O "${TYPO3_SRC}"
  echo "Extracting typo3..."
  tar zxf "${TYPO3_SRC}" --strip-components 1 -C "${TYPO3_WWW}"
  echo "Enabling INSTALL TOOL..."
  touch "${TYPO3_WWW}/typo3conf/ENABLE_INSTALL_TOOL"
  echo "Setting file system permissions..."
  chown -Rfh www-data:www-data "${TYPO3_WWW}/fileadmin" "${TYPO3_WWW}/typo3temp" "${TYPO3_WWW}/typo3conf" "${TYPO3_WWW}/uploads"
  echo "Done."
else
  echo "${TYPO3_WWW}/index.php exists, skipping typo3 installation."
fi
