#!/bin/bash
# Exemplo: conte pacotes em /var/lib/pkg/reports/update
# Adapte para sua distro!
if [ -f /var/lib/pkg/reports/update ]; then
  grep -c "available" /var/lib/pkg/reports/update
else
  echo "0"
fi
