require 'rails_helper'

RSpec.describe Market do
  before do
    params = {
      "attributes": {
                "name": "14&U Farmers' Market",
                "street": "1400 U Street NW ",
                "city": "Washington",
                "county": "District of Columbia",
                "state": "District of Columbia",
                "zip": "20009",
                "lat": "38.9169984",
                "lon": "-77.0320505",
                "vendor_count": 1
            },
            "relationships": {
                "vendors": {
                    "data": [
                        {
                            "id": "55823",
                            "type": "vendor"
                        }
                    ]
                }
            }
          }
          
    @market = Market.new(params)
  end

  it "exists and has attributes" do
    expect(@market).to be_a Market
    expect(@market.name).to eq("14&U Farmers' Market")
    expect(@market.street).to eq("1400 U Street NW ")
    expect(@market.city).to eq("Washington")
    expect(@market.county).to eq("District of Columbia")
    expect(@market.state).to eq("District of Columbia")
    expect(@market.zip).to eq("20009")
    expect(@market.lat).to eq("38.9169984")
    expect(@market.lon).to eq("-77.0320505")
    expect(@market.vendor_count).to eq(1)

    expect(@market.vendors).to be_a Hash
    expect(@market.vendors).to eq({"data": [{
              "id": "55823",
              "type": "vendor"
          }] })
  end

  describe "instance methods" do
    it "clean up vendor ids attribute" do
      expect(@market.vendors_at_market).to eq(["55823"])
    end
  end
end