#!/usr/bin/env bash
# Lamudi Ad API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./ad.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/lamudi/ad" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.lamudi.com.ph/property/41032-73-626c638217d1-1d2a-1985488-907f-7802
