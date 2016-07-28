class CartItem
    attr_reader :listing_id
    attr_reader :quantity 
    
    def initialize listing_id, quantity =1
        @listing_id = listing_id
        @quantity = quantity
    
    end
    
    def increment
       @quantity = @quantity + 1 
    end
    
    def listing
        Listing.find listing_id
    end
    
    def total_price
        listing.price * quantity
    end
    def item
        @cart.remove_item params[:id], session[:cart_item]
    end
end

