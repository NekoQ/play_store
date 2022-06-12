class GamesController < ApplicationController
  before_action :authenticate_user!, except: %i[show]
  before_action :check_role, except: %i[show]

  def show
    @game = Game.find(params[:id])
    @isPublisher = false
    @isPublisher = current_user.role == User::PUBLISHER if current_user
  end

  def new; end

  def create
    game = Game.create(
      title: params[:title],
      description: params[:description]
    )
    redirect_to game_path(game.id)
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    game = params[:game]
    Game.find(params[:id]).update(
      title: game[:title],
      description: game[:description]
    )
    redirect_to game_path(params[:id])
  end
end
