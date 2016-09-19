class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
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
      procedure: {})
  end
end
