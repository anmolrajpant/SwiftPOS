class Item < ApplicationRecord
  belongs_to :product
  belongs_to :sale
  validates :quantity, :numericality => { :greater_than_or_equal_to => 0}

  before_save :set_total
  before_save :decrement  
  def set_total  
   if self.quantity.blank?  
    0  
   else  
        self.total = self.quantity * self.product.price  
   end  
  end  
  def subtotal  
   if self.quantity.blank?  
    0  
   else  
        self.quantity * self.product.price  
   end  
  end

  def decrement
  	self.product.stock = self.product.stock - self.quantity
  end
end
