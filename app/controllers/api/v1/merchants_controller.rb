class Api::V1::MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_all_merchants
  end

  def show
    @merchant = MerchantFacade.get_one_merchant(params[:id])
    @items = ItemFacade.all_merchant_items(@merchant.id)
  end
end
