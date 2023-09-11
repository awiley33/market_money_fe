require 'rails_helper'

RSpec.describe "Vendors Show Page", :vcr do
  before do
    visit vendor_path("55823")
  end

  it "displays vendor name, contact info, credit status, and description" do
    expect(page).to have_content("The Charcuterie Corner")
    expect(page).to have_content("name: Claudie Langworth III")
    expect(page).to have_content("phone: 1-147-179-9747")
    expect(page).to have_content("NO")
    expect(page).to have_content("Vendor selling a variety of artisanal cured meats and sausages.")
  end
end