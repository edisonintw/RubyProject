class UsersController < ApplicationController

  def login

  end

  def logout

  end

  def index   # GET
    @users = User.all
  end

  def show    # GET
    # User
  end

  def new     # GET
    @user = User.new
  end

  def create  # POST
    @create_params = params[:user].permit(:username, :age, :account, :password)
    @user = User.new(@create_params)
    if @user.save
      flash[:notice] = 'Success'
      redirect_to root_path
    else
      flash[:alert] = @user.errors.full_messages.join(',')
      render new_user_path(@user)
    end
  end

  def edit    # GET
    @user = User.find(session[:user_id])
  end

  def update  # PUT or PATCH
    # Update user profile
  end

  def delete  # DELETE
    # Delete user
  end

end
