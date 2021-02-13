class CocktailsController < ApplicationController

before_action :set_cocktail, :new_dose, only: %i[show]
before_action :new_cocktail, only: %i[index show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def new_cocktail
    @cocktail = Cocktail.new
  end

  def new_dose
    @dose = Dose.new
  end

  def set_cocktail
    @cocktail_found = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
