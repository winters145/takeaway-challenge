require_relative './order.rb'

class Takeaway

  attr_reader :order, :dishes

  def initialize(dishes = [{pizza: '£9'}, {pasta: '£7'}])
    @dishes = dishes
  end

  def menu
    @dishes
  end

  def add_to_order(choice)
    @order.add_to_order(choice)
  end

  def new_order
    @order = Order.new(@dishes)
  end

end
