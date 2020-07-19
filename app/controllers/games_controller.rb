class GamesController < ApplicationController

    def index
        games = Game.all 
        render json:games
    end

    def create
        game = Game.create(id: params[:user_id], duration: params[:duration], score: params[:score])
        if game
            render json: game 
        else 
            render json: {message: "Could not create new game"}
        end
    end
end
