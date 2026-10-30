# Lamudi Ad API – Ruby example (stdlib only)
# Usage: PILOTERR_API_KEY=your-key ruby ad.rb
require "json"
require "net/http"
require "uri"

uri = URI("https://api.piloterr.com/v2/lamudi/ad")
uri.query = URI.encode_www_form('query' => 'https://www.lamudi.com.ph/property/41032-73-626c638217d1-1d2a-1985488-907f-7802')

request = Net::HTTP::Get.new(uri)
request["x-api-key"] = ENV.fetch("PILOTERR_API_KEY")

response = Net::HTTP.start(uri.host, uri.port, use_ssl: true, read_timeout: 60) do |http|
  http.request(request)
end

abort "Piloterr error #{response.code}: #{response.body}" unless response.is_a?(Net::HTTPSuccess)

puts JSON.pretty_generate(JSON.parse(response.body))
