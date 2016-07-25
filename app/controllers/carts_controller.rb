class CartsController < ApplicationController
   before_filter :initialize_cart
   
   def add
     @cart.add_item params[:id]
     session["cart"] = @cart.serialize
     listing = Listing.find params[:id]
     redirect_to :back, notice: "Added #{listing.name} to cart."
   end
   
   def show
   end
   
    
end