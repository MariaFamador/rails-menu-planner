class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @ingredients = @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(recipe_id)  
    @ingredients = @recipe.ingredients
  end

  def index
    @recipes = Recipe.all
  end

private
  def recipe_id
    params[:id]
  end

  def recipe_params
    params.require(:recipe).permit(
      :id, 
      :menu_id, 
      :title, 
      :category, 
      :procedure,
      ingredients_attributes: [:label, :recipe_id])
  end
end
