#!/usr/bin/env bash
# Lamudi Search API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./search.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/lamudi/search" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=https://www.lamudi.com.ph/buy/metro-manila/makati/condo/
