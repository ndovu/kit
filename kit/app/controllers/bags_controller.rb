class BagsController < ApplicationController
  def new
  end

  def create
    @bag = Bag.new(bag_params)
 
    @bag.save
    redirect_to @bag
  end
 
  private
    def bag_params
      params.require(:name).permit(:description, :link)
    end
    
end
