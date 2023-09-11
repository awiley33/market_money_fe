require 'rails_helper'

RSpec.describe MarketsFacade, :vcr do
  it "returns all markets" do
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

  it "returns one market" do
    market = MarketsFacade.new.one_market("322458")

    expect(market).to be_a(Market)
    expect(market.name).to be_a(String)
    expect(market.street).to be_a(String)
    expect(market.city).to be_a(String)
    expect(market.county).to be_a(String)
    expect(market.state).to be_a(String)
    expect(market.zip).to be_a(String)
    expect(market.lat).to be_a(String)
    expect(market.lon).to be_a(String)
    expect(market.vendor_count).to be_an(Integer)
  end

  it "returns one vendor" do
    vendor = MarketsFacade.new.one_vendor("55297")

    expect(vendor).to be_a(Vendor)
    expect(vendor.name).to be_a(String)
    expect(vendor.description).to be_a(String)
    expect(vendor.contact_name).to be_a(String)
    expect(vendor.phone).to be_a(String)
    expect(vendor.credit_accepted).to be_in([true, false])
  end

  it "returns markets at a vendor" do
    ids = ["55340", "56282", "54988", "54876", "56162"]

    vendors = MarketsFacade.new.vendors(ids)

    vendors.each do |vendor|
      expect(vendor).to be_a Vendor
    end
  end
end