class MarketsFacade
  def all_markets
    service = MarketsService.new
    request = service.get_all_markets
    @markets = request[:data].map do |market|
      Market.new(market)
    end
  end
end