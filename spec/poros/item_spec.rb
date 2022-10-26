require 'rails_helper'

RSpec.describe ItemPoro do
  it 'exists' do
    response = ItemService.merchant_items(1)
    test_data = response[:data].first
    item = ItemPoro.new(test_data)

    expect(item).to be_an_instance_of(ItemPoro)
    expect(item.id).to be_a(String)
    expect(item.merch_id).to eq(1)
  end
end