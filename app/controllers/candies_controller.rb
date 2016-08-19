class CandiesController < ApplicationController
  before_action :candy_store

  before_action :candy, except: [:index, :new, :create]

  def index
    @candies = @candy_store.candies
  end

  def show
  end

  def new
    @candy = Candy.new
  end

  def create
    @candy = @candy_store.candies.new(candy_params)
    if @candy.save
      redirect_to candy_store_candy_path(@candy_store, @candy)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @candy.update(candy_params)
      redirect_to candy_store_candy_path(@candy_store, @candy)
    else
      render :edit
    end
  end

  def destroy
    @candy.destroy
    redirect_to candy_store_candies_path(@candy_store)
  end

  private

    def candy_params
      params.require(:candy).permit(:name, :cost, :allergens, :calories, :ranking)
    end

    def candy_store
      @candy_store = CandyStore.find(params[:candy_store_id])
    end

    def candy
      @candy = @candy_store.candies.find(params[:id])
    end
end
