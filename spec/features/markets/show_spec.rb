require 'rails_helper'

RSpec.describe "Markets Show Page", :vcr do
  before do
    visit market_path("322458")
  end

  it "displays the market name and readable address" do
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("1400 U Street NW")
    expect(page).to have_content("Washington, District of Columbia 20009")
  end

  it "displays all vendors included at the market" do
    expect(page).to have_content("The Charcuterie Corner")
  end
  
  it "displays all vendors when there are more than one" do
    visit market_path("322482")

    expect(page).to have_content("Saddle Up Smoothies")
    expect(page).to have_content("Bookish Bazaar")
    expect(page).to have_content("The Freshly Squeezed Company")
    expect(page).to have_content("The Sourdough Queen")
    expect(page).to have_content("Colorful Comforts")
  end

  it "links to vendor show page from vendor name" do
    click_link "The Charcuterie Corner"
    
    expect(current_path).to eq(vendor_path("55823"))
  end
end


# As a visitor,
# When I visit a market's show page 'markets/:id'
# I see that market's name and readable address
# And I also see a list of all the Vendors that are at that market
# Each vendor name is a link to that vendor's show page

# 322482
