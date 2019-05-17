class UsersController < ApplicationController

  def index
    if params[:show_all].present?
      @users = User.all
    end
  end

  def create
    data = params[:data_file].tempfile.read

    if data.present?
      Resque.enqueue(TakeAction, data)
    end
    redirect_to(:action => :index, :show_all => true)
  end

end
