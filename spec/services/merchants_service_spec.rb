require 'rails_helper'

RSpec.describe MerchantService do
  it 'returns all merchants' do 
    result = MerchantService.all_merchants

    expect(result).to have_key(:data)
    expect(result[:data].count).to eq 100
    first = result[:data].first

    expect(first).to have_key(:id)
    expect(first[:id]).to be_a(String)

    expect(first).to have_key(:type)
    expect(first[:type]).to eq('merchant')

    expect(first).to have_key(:attributes)
    expect(first[:attributes]).to have_key(:name)
    expect(first[:attributes][:name]).to be_a(String)
  end

  it 'can return a specific merchant' do
    result = MerchantService.one_merchant(1)

    expect(result[:data]).to have_key(:id)
    expect(result[:data][:id]).to be_a(String)

    expect(result[:data]).to have_key(:type)
    expect(result[:data][:type]).to eq('merchant')

    expect(result[:data]).to have_key(:attributes)
    expect(result[:data][:attributes]).to have_key(:name)
    expect(result[:data][:attributes][:name]).to be_a(String)
  end
end