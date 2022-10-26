require 'rails_helper'

RSpec.describe 'Merchant index' do
  it 'will display all merchants' do
    merchants = MerchantFacade.get_all_merchants
    merch_1 = merchants.first
    merch_2 = merchants.second

    visit api_v1_merchants_path

    expect(page).to have_link(merch_1.name)
    expect(page).to have_link(merch_2.name)
  end

  it 'will have the merchant link take you to all merchant items' do
    merchants = MerchantFacade.get_all_merchants
    merch_1 = merchants.first
    merch_2 = merchants.second

    visit api_v1_merchants_path

    click_link(merch_1.name)
    expect(current_path).to eq(api_v1_merchant_path(merch_1.id))
  end
end