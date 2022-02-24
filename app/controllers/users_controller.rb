class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :artists

  def artists
    @user = User.find(params[:id])
    @services = Service.where(user: @user)
    @commission = Commission.new
    authorize @user
  end

  def thanks; end

  def edit
    @user = User.find(params[:id])
    @services = Service.where(user: @user)
    @service = Service.new
    authorize @user
    # ...
  end

  def new
    @user = User.new
  end

  def update
    # ...
    authorize @user
    # ...
  end
    
  def digital_art
    @artworks = Artwork.where(category: 'digital art')
  end

  def paintings
    @artworks = Artwork.where(category: 'painting')
  end

  def sculptures
    @artworks = Artwork.where(category: 'sculpture')
  end
  
  def my_bookings
    @commissions = Commission.where(user: current_user)
  end

end
