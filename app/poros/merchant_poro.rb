class MerchantPoro
  attr_reader :id, :name

  def initialize(merchant_data)
    @id = merchant_data[:id]
    @name = merchant_data[:attributes][:name]
  end
end