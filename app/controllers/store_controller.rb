class StoreController < ApplicationController
  def index
    @games = Game.all
    @apps  = App.all
    @isPublisher = false
    if current_user
      @isPublisher = current_user.role == User::PUBLISHER if current_user
      @switch_role = (User::ROLES - [current_user.role]).first
    end
  end

  def switch_role
    if current_user
      role = (User::ROLES - [current_user.role]).first
      current_user.update_attribute(:role, role)
    end
    redirect_to root_path
  end
end
