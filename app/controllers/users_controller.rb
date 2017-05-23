class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    id_number=params[:id]
  @user=User.find(id_number)
  @userposts=@user.photos.all
  render("show.html.erb")
  end
end
