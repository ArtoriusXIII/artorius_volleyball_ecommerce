class Listing < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "200x200>", thumb: "50x30>" }, default_url: "sorrynoimage-200x200.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    
    belongs_to :category
    
    validates :name, :description, :price, presence: true
    validates :price, numericality: {greater_than: 0}
end
