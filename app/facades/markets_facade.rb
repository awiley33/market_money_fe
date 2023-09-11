class MarketsFacade
  def service
    service = MarketsService.new
  end

  def all_markets
    request = service.get_all_markets
    @markets = request[:data].map do |market|
      Market.new(market)
    end
  end

  def one_market(id)
    request = service.get_one_market(id)
    @market = Market.new(request[:data])
  end

  def one_vendor(id)
    request = service.get_one_vendor(id)
    @vendor = Vendor.new(request[:data])
  end

  def vendors(ids)
    @vendors = ids.map do |id|
      request = service.get_one_vendor(id)
      Vendor.new(request[:data])
    end
  end
end