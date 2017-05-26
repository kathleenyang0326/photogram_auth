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

def createlike
  @like = Like.new

  @like.user_id = params[:user_id]
  @like.photo_id = params[:photo_id]

  save_status = @like.save

  if save_status == true
    redirect_to(:back, :notice => "Like created successfully.")
  else
    render("likes/new.html.erb")
  end
end


end
