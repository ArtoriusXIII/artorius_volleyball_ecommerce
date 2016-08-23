class Listing < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "150x150>", thumb: "50x30>" }, default_url: "sorrynoimage-200x200.jpg",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
                   
                
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates :name, :description, :price, presence: true
    validates :price, numericality: {greater_than: 0}
  
    
    belongs_to :category
end
