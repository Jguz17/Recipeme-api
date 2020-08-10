class Api::V1::ListsController < ApplicationController
    skip_before_action :authorized

    def index
        lists = List.all

        render json: lists
    end

    def create
        user_id = params[:user_id]
        recipe_id = params[:recipe_id]

        list = List.create(user_id: user_id, recipe_id: recipe_id)

        render json: list
    end

    def edit
        list = List.find(params[:id])
    end

    def update
        list = List.find(params[:id])
        recipe_id = params[:recipe_id]

        list.update(recipe_id: recipe_id)

        render json: list
    end

    def destroy
        List.find(params[:id]).destroy
        
        render json: {message: 'success'}
    end
end
