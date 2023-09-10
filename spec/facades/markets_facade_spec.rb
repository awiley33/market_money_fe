require 'rails_helper'

RSpec.describe MarketsFacade do
  it "will return all markets" do
    markets = MarketsFacade.new.all_markets

    expect(markets.first).to be_a(Market)
    expect(markets.first.name).to be_a(String)
    expect(markets.first.street).to be_a(String)
    expect(markets.first.city).to be_a(String)
    expect(markets.first.county).to be_a(String)
    expect(markets.first.state).to be_a(String)
    expect(markets.first.zip).to be_a(String)
    expect(markets.first.lat).to be_a(String)
    expect(markets.first.lon).to be_a(String)
    expect(markets.first.vendor_count).to be_an(Integer)
  end
end