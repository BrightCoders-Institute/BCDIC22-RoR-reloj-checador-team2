class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    set_store
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
    set_store
  end

  def update
    set_store
    if @store.update(store_params)
      redirect_to '/stores'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_store
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
