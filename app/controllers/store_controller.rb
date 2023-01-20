class StoreController < ApplicationController

    def register_store
    end

    def index
        @stores = Store.all
    end

end
