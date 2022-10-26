require 'rails_helper'

RSpec.describe 'Item show page' do 
  it 'can display all info about the specific item' do 
    merchants = MerchantFacade.get_all_merchants
    merch_1 = merchants.first
    items = ItemFacade.all_merchant_items(merch_1.id)
    item = items.first
    final_item = ItemFacade.one_item(item.id)

    visit api_v1_item_path(final_item.id)

    expect(page).to have_content(final_item.name)
    expect(page).to have_content(final_item.description)
    expect(page).to have_content(final_item.unit_price)
  end
end