class ApplicationController < ActionController::Base
  # Sorry for ugly code ┐(シ)┌

  private

  def check_role
    redirect_to root_path if current_user.role == User::USER
  end
end
