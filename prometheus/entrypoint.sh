#!/bin/sh
# Write METRICS_API_KEY env var to a file for Prometheus authorization
printf '%s' "${METRICS_API_KEY}" > /etc/prometheus/metrics_api_key

exec prometheus --config.file=/etc/prometheus/prom.yml --storage.tsdb.path=/prometheus
