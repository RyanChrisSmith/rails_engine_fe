require 'rails_helper'

RSpec.describe 'Merchant Show page' do
  it 'will display all items for a specifice merchant' do
    merchants = MerchantFacade.get_all_merchants
    merch_1 = merchants.first
    items = ItemFacade.all_merchant_items(merch_1.id)
    expected = items.first

    visit api_v1_merchant_path(merch_1.id)

    expect(page).to have_link(expected.name)
    expect(expected.merch_id).to eq(merch_1.id.to_i)
  end
end