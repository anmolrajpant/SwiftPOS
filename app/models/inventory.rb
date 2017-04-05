class Inventory < ApplicationRecord
	validates :itemName, presence: true
	validates :itemDesc, presence: true
	validates :itemCatagory, presence: true
	validates :itemQuantity, :numericality => { :greater_than_or_equal_to => 0 }
	validates :itemPrice, :numericality => { :greater_than_or_equal_to => 0} 
	CATAGORIES = ['Glocery', 'Fruits', 'Frozen']
end
