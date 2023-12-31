require 'rails_helper'

RSpec.describe Vendor do
  before do
    params = {
      attributes: {
        "name": "Orange County Olive Oil",
        "description": "Handcrafted olive oil made from locally grown olives",
        "contact_name": "Syble Hamill",
        "contact_phone": "1-276-593-3530",
        "credit_accepted": false
    }
          }
          
    @vendor = Vendor.new(params)
  end

  it "exists and has attributes" do
    expect(@vendor).to be_a Vendor
    expect(@vendor.name).to eq("Orange County Olive Oil")
    expect(@vendor.description).to eq("Handcrafted olive oil made from locally grown olives")
    expect(@vendor.contact_name).to eq("Syble Hamill")
    expect(@vendor.phone).to eq("1-276-593-3530")
    expect(@vendor.credit_accepted).to eq(false)
  end

  describe "instance methods" do
    it "can display whether credit is accepted" do
      expect(@vendor.credit_accepted?).to eq("NO")
    end
  end
end