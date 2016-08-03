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
   def remove
      cart = session['cart']
      item = cart['items'].find {|item| item['listing_id'] == params[:id]}
      if item
         cart['items'].delete item
      end
      redirect_to cart_path
      
   end
   
   def checkout
      @order_form = OrderForm.new user: User.new
   end
   

 
    
end