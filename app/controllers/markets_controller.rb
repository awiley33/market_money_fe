class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.new.all_markets
  end


  private
  params.permit(:name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count)
end