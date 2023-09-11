class VendorsController < ApplicationController
  def show
    @vendor = MarketsFacade.new.one_vendor(vendor_params[:id])
  end


  private
  def vendor_params
    params.permit(:id, :name, :description, :contact_name, :phone, :credit_accepted)
  end
end