class MarketsService
  def conn
    Faraday.new(url: "http://localhost:3000/")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_all_markets
    get_url("api/v0/markets")
  end

  def get_one_market(id)
    get_url("api//v0/markets/#{id}")
  end

  def get_one_vendor(id)
    get_url("api/v0/vendors/#{id}")
  end
end