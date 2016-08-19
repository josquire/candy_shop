class CandyStoresController < ApplicationController
  before_action :candy_store, except: [:index, :new, :create]
  def index
    @candy_stores = CandyStore.all
  end

  def show
  end

  def new
    @candy_store = CandyStore.new
  end

  def create
    @candy_store = CandyStore.new(candy_store_params)
    if @candy_store.save
      redirect_to candy_store_path(@candy_store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @candy_store.update(candy_store_params)
      redirect_to candy_store_path(@candy_store)
    else
      render :edit
    end
  end

  def destroy
    @candy_store.destroy
    redirect_to candy_stores_path
  end

  private

  def candy_store_params
    params.require(:candy_store).permit(:name, :address, :phone, :hours)
  end

  def candy_store
    @candy_store = CandyStore.find(params[:id])
  end
end
