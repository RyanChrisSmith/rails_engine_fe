class Api::V1::ItemsController < ApplicationController
  def show
    @item = ItemFacade.one_item(params[:id])
  end
end
