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
    @total -= total * (discount.to_f/100)
    "After the discount, the total comes to $#{@total.to_i}"
  end 
  
  
end 
