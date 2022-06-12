class AppsController < ApplicationController
  before_action :authenticate_user!, only: %i[new edit]
  before_action :check_role, except: %i[show]

  def show
    @app = App.find(params[:id])
    @isPublisher = false
    @isPublisher = current_user.role == User::PUBLISHER if current_user
  end

  def new; end

  def create
    app = App.create(
      title: params[:title],
      description: params[:description]
    )
    redirect_to app_path(app.id)
  end

  def edit
    @app = App.find(params[:id])
  end

  def update
    app = params[:app]
    App.find(params[:id]).update(
      title: app[:title],
      description: app[:description]
    )
    redirect_to app_path(params[:id])
  end
end
