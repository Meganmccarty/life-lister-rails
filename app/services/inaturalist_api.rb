require 'net/http'

class InaturalistApi
    class << self
        def fetch(taxon)
            url = URI("https://api.inaturalist.org/v1/taxa?q=#{taxon}&rank_level=10")
            res = Net::HTTP.get(url)
            JSON.parse(res)
        end
    end
end