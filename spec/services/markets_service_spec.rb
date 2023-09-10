require "rails_helper"

RSpec.describe MarketsService do
  it "connects to the markets API"  do
    search = MarketsService.new.get_all_markets
    expect(search).to be_a Hash
    expect(search[:data]).to be_an Array

    market = search[:data].first

    expect(market).to have_key :attributes
    expect(market[:attributes]).to be_a Hash

    expect(market[:attributes]).to have_key :name
    expect(market[:attributes][:name]).to be_a String

    expect(market[:attributes]).to have_key :street
    expect(market[:attributes][:street]).to be_a String

    expect(market[:attributes]).to have_key :county
    expect(market[:attributes][:county]).to be_a String

    expect(market[:attributes]).to have_key :state
    expect(market[:attributes][:state]).to be_a String

    expect(market[:attributes]).to have_key :zip
    expect(market[:attributes][:zip]).to be_a String

    expect(market[:attributes]).to have_key :lat
    expect(market[:attributes][:lat]).to be_a String

    expect(market[:attributes]).to have_key :lon
    expect(market[:attributes][:lon]).to be_a String

    expect(market[:attributes]).to have_key :vendor_count
    expect(market[:attributes][:vendor_count]).to be_an Integer
  end
end