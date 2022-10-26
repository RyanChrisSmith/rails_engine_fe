require 'rails_helper'

RSpec.describe ItemService do 
  it 'returns all items for a specific merchant' do
    result = ItemService.merchant_items(1)

    expect(result).to be_a(Hash)
    single_item = result[:data].first

    expect(single_item).to have_key(:id)
    expect(single_item[:id]).to be_a(String)

    expect(single_item).to have_key(:type)
    expect(single_item[:type]).to be_a(String)

    expect(single_item).to have_key(:attributes)
    expect(single_item[:attributes]).to have_key(:name)
    expect(single_item[:attributes][:name]).to be_a(String)

    expect(single_item[:attributes]).to have_key(:description)
    expect(single_item[:attributes][:description]).to be_a(String)

    expect(single_item[:attributes]).to have_key(:unit_price)
    expect(single_item[:attributes][:unit_price]).to be_a(Float)

    expect(single_item[:attributes]).to have_key(:merchant_id)
    expect(single_item[:attributes][:merchant_id]).to be_an(Integer)
  end
end