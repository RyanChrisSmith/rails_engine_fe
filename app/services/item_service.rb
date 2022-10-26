class ItemService 
  def self.conn
    Faraday.new(url: "http://localhost:3000") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.specific_item(item_id)
    response = conn.get("/api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end