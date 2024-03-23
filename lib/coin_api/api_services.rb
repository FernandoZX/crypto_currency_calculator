module CoinApi
  class ApiServices
    include HTTParty
    base_uri 'https://api.coinmarketcap.com/v1'

    def initialize(base, currencies)
      @base = base
      @currencies = currencies
    end

    def current_rates
      self.class.get("/exchangerate/#{@base}?filter_asset_id=#{@currencies}&invert=true", headers: {
                       'Accept' => 'application/json',
                       'X-CoinAPI-Key' => ENV['COIN_API_KEY']
                     })
    end
  end
end
