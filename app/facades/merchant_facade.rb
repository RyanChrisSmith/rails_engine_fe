class MerchantFacade
  def self.get_all_merchants
    json = MerchantService.all_merchants

    @merchants = json[:data].map do |merchant_data|
      MerchantPoro.new(merchant_data)
    end
  end

  def self.get_one_merchant(merchant_id)
    json = MerchantService.one_merchant(merchant_id)

    @merchant = MerchantPoro.new(json[:data])
  end
end