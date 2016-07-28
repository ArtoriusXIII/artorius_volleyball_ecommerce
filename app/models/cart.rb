
class Cart
  attr_reader :items

   def self.build_from_hash hash
    items = if hash["cart"] then
       hash["cart"]["items"].map do |item_data|
     CartItem.new item_data["listing_id"], item_data["quantity"]
    end
    else
      []
    end
    new items
   end 

  def initialize items = []
    @items = items
  end

  def add_item listing_id
   item = @items.find {|item| item.listing_id == listing_id}
     if item
       item.increment
     else
       @items << CartItem.new(listing_id)
     end
  end

   def empty?
     @items.empty?
   end

   def count
     @items.length
   end

    def serialize
      @items = @items.map do |item|

      {
         "listing_id" => item.listing_id,
         "quantity" => item.quantity
      }
      end
      {
       
      "items" => items

      }
    end
    
    def total_price
        @items.inject(0) { |sum, item| sum + item.total_price }
    end
  
    
   
   
end

