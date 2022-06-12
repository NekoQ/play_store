class DownloadsController < ApplicationController
  def show
    unless current_user
      redirect_to root_path
      return
    end
    # The ideea is to have in database
    # base64 -> file location
    # Magically generate one time download link
    # Redirect to it
    type, id = Base64.decode64(params[:id]).split(':')
    flash[:notice] = "Downloading #{type} #{id}"
    redirect_to root_path
  end
end
