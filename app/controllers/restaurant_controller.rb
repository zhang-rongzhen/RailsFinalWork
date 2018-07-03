class RestaurantController < ApplicationController
  
  before_action :set_restaurant, only: [:show]
  
  def index
    @restaurants=Restaurant.page(params[:page]).per(9)
  end
  
  def show
    @hash = Gmaps4rails.build_markers(@restaurant) do |gmap, marker|
     marker.lat gmap.localy
     marker.lng gmap.localx
     marker.infowindow gmap.address
   end
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.friendly.find(params[:id])
    end

end
