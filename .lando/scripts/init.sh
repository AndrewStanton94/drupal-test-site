#!/bin/bash
# Copy all the necessary files for drupal.
if [ ! -f /app/web/sites/default/settings.local.php ]; then
  cp /app/web/sites/default/settings.local.php.sample /app/web/sites/default/settings.local.php
fi

# If the site doesn't have a settings.php.
if [ ! -f /app/web/sites/default/settings.php ]; then
  cp /app/web/sites/default/default.settings.php /app/web/sites/default/settings.php
fi

if [ ! -d /app/web/sites/default/files ]; then
  mkdir -p /app/web/sites/default/files
  chmod -R 777 /app/web/sites/default/files
fi

if [ ! -d /app/web/sites/default/private ]; then
  mkdir -p /app/web/sites/default/private
  chmod -R 777 /app/web/sites/default/private
fi

chmod 755 /app/web/sites/default
