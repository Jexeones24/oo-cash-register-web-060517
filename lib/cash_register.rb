class CashRegister
  attr_accessor :total
  attr_reader :discount, :items

  def initialize(employee_discount=0) #things I need done once on creation
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    i = quantity
    until i == 0 do
    @items << item
    i -= 1
    end
    @total += price * quantity
    @price = price
  end

  def apply_discount
    @total -= @total * @discount/100
    if @discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end


end
