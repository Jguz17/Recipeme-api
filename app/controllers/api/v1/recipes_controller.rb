class Api::V1::RecipesController < ApplicationController
    skip_before_action :authorized

    def index
        recipes = Recipe.all

        render json: recipes
    end

    def create
        name = params[:name]
        ingredients = params[:ingredients]
        description = params[:description]

        recipe = Recipe.create(name: name, ingredients: ingredients, description: description)
        
        render json: recipe
    end


    def edit
        recipe = Recipe.find(params[:id])
    end

    def update 
        recipe = Recipe.find(params[:id])

        name = params[:name]
        ingredients = params[:ingredients]
        description = params[:description]

        recipe = Recipe.update(name: name, ingredients: ingredients, description: description)
        
        render json: recipe
    end

    def destroy 
        Recipe.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
