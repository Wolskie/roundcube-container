#!/bin/sh

echo "--- Copying plugin information ---"
echo `pwd`

for fn in `ls /var/roundcube/plugins/config/*.php 2>/dev/null || true`; do
  plugin="$(basename $fn .inc.php)" 
  cp "$fn" plugins/$plugin/config.inc.php
done
