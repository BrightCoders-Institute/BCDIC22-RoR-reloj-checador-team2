class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  def index
    @stores = Store.all
  end

  def show
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to '/stores'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to '/stores'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @store.destroy
    redirect_to stores_path, status: :see_other
  end

  private

  def store_params
    params.require(:store).permit(:name, :adress)
  end

  def set_store
    @store = Store.find(params[:id])
  end
end
