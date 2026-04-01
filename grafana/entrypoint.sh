#!/bin/sh
# Substitute environment variables in alerting provisioning files
for f in /etc/grafana/provisioning/alerting/*.yml; do
  if [ -f "$f" ]; then
    envsubst < "$f" > "$f.tmp" && mv "$f.tmp" "$f"
  fi
done

# Substitute environment variables in datasources provisioning files
for f in /etc/grafana/provisioning/datasources/*.yml; do
  if [ -f "$f" ]; then
    envsubst < "$f" > "$f.tmp" && mv "$f.tmp" "$f"
  fi
done

exec /run.sh
