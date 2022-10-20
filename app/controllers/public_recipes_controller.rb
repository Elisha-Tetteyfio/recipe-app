class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user, :recipe_foods).all
  end
end
