class UsersController < ApplicationController

  def artists
    @user = User.find(params[:id])
    @commission = Commission.new
  end

  def thanks

  end
end
