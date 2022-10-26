class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.all_merchants
    response = conn.get("/api/v1/merchants")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_merchant(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end