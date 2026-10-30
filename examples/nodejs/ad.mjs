// Lamudi Ad API – Node.js example (Node 18+, native fetch, ES module)
// Usage: PILOTERR_API_KEY=your-key node ad.mjs

const params = new URLSearchParams({
  "query": "https://www.lamudi.com.ph/property/41032-73-626c638217d1-1d2a-1985488-907f-7802",
});

const response = await fetch(`https://api.piloterr.com/v2/lamudi/ad?${params}`, {
  headers: { "x-api-key": process.env.PILOTERR_API_KEY },
  signal: AbortSignal.timeout(60_000),
});

if (!response.ok) {
  console.error(`Piloterr error ${response.status}: ${await response.text()}`);
  process.exit(1);
}

console.log(JSON.stringify(await response.json(), null, 2));
