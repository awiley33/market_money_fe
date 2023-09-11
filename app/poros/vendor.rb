class Vendor
  attr_reader :id,
              :name,
              :description,
              :contact_name,
              :phone,
              :credit_accepted

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @contact_name = data[:attributes][:contact_name]
    @phone = data[:attributes][:contact_phone]
    @credit_accepted = data[:attributes][:credit_accepted]
  end

  def credit_accepted?
    if @credit_accepted == true
      "YES"
    else
      "NO"
    end
  end
end