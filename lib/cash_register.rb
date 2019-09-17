class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    @total = @total * 0.8
    if discount
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end