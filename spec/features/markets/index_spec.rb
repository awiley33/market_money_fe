require 'rails_helper'

RSpec.describe "Markets Index Page", :vcr do
  before do
    visit markets_path
  end
  it "displays all markets with their name, city and state" do
    within ".market-322458" do
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("Washington")
      expect(page).to have_content("District of Columbia")
    end
  end

  it "has a more info button which goes to market show page" do
    within ".market-322458" do
      expect(page).to have_button("More Info")

      click_button("More Info")
      expect(current_path).to eq(market_path("322458"))
    end
  end
end

# As a visitor,
# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'