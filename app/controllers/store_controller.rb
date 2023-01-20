class StoreController < ApplicationController
  def register_store; end

  def crud_store
    @stores = Store.all
  end
end
