class Api::V1::RecipesController < ApplicationController
    skip_before_action :authorized

    def index
        recipes = Recipe.all

        render json: recipes
    end

    def create
        name = params[:name]
        ingredients = params[:ingredients]
        source = params[:source]
        image = params[:image]

        recipe = Recipe.create(name: name, ingredients: ingredients, source: source, image: image)
        
        render json: recipe
    end


    def edit
        recipe = Recipe.find(params[:id])
    end

    def update 
        recipe = Recipe.find(params[:id])

        name = params[:name]
        ingredients = params[:ingredients]

        recipe = Recipe.update(name: name, ingredients: ingredients, source: source)
        
        render json: recipe
    end

    def destroy 
        Recipe.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
