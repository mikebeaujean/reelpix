class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to("/")
      else
        render :new
      end
  end

  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    @playlists = Playlist.where(user_id: user_id)
  end


    private

    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :password_confirmation
        )
    end

end
