class CashRegister
  attr_accessor :total, :discount, :cart, :transactions

  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @cart = []
    @transactions = {}
  end 
  
  def add_item(item, amount, quantity = 1)
    count = 0 
    until count == quantity
     @cart << item 
     count += 1
   end 
   transactions[item] ={
   "amount" => amount,
   "quantity" => quantity
    } 
    @total += amount * quantity
  end 
  
  def apply_discount
    if discount != nil
    @total -= total * (discount.to_f/100)
    "After the discount, the total comes to $#{@total.to_i}."
    else "There is no discount to apply." 
   end 
  end 
  
  def items
    @cart
  end 
  
  
  
end 
