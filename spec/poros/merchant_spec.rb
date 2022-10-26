require 'rails_helper'

RSpec.describe Merchant do
  it 'will only take the data it needs from the API call' do
    response = MerchantService.all_merchants
    test_data = response[:data].first

    merchant = MerchantPoro.new(test_data)
    expect(merchant).to be_an_instance_of(MerchantPoro)
    expect(merchant.id).to eq("1")
    expect(merchant.name).to eq("Schroeder-Jerde")
  end
end