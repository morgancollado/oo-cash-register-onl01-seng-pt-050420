class CashRegister
  attr_accessor :total, :discount
  
  @@cart=[]
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end 
  
  def add_item(item, amount, quantity = 1)
    @@cart << item 
    @total += amount * quantity
  end 
  
  def apply_discount
    @total *= .20
    
  end 
  
  
end 
