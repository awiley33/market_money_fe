class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.new.all_markets
  end

  def show
    @market = MarketsFacade.new.one_market(market_params[:id])
    vendor_ids = @market.vendors_at_market
    @vendors = MarketsFacade.new.vendors(vendor_ids)
  end


  private
  def market_params
    params.permit(:id, :name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count, :vendors)
  end
end