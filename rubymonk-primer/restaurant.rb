
# A restaurant has incoming orders for which you 
# need to compute the costs based on the menu. 
# if the order is {:rice => 1, :noodles => 1}, 
# and the menu is {:rice => 3, :noodles => 2}, then the cost is 5.
# If the orders are {:rice => 1, :noodles => 1} and 
# {:rice => 2, :noodles => 2} and the menu is 
# {:rice => 3, :noodles => 2}, then the cost is 15. 


class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # your code here
    price = 0
    orders.each do |order|
        order.each do |key, value|
            price += @menu[key].to_i * value.to_i
        end
    end
    price
  end
end
