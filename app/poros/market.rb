class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip,
              :lat,
              :lon,
              :vendor_count,
              :vendors

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = data[:attributes][:city]
    @county = data[:attributes][:county]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
    @lat = data[:attributes][:lat]
    @lon = data[:attributes][:lon]
    @vendor_count = data[:attributes][:vendor_count]
    @vendors = data[:relationships][:vendors][:data]
  end

  def vendors_at_market
    @vendors.map do |details|
      details[:id]
    end
  end


end