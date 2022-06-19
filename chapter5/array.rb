
def total(prices)
    amount = 0 
    prices.each {|item| amount += item}
    amount 
end

def refund(prices)
    amount = 0 
    prices.each {|item| amount -= item}
    amount 
end 

def show_discounts(prices)
    prices.each do |item|  
        amount_off = item / 3.0
        puts format("Show Discount: $%.2f", amount_off)
    end    
end 

prices = [2.99, 25.00, 9.99]

puts format("Total: $%.2f", total(prices))
puts format("Refund: $%.2f", refund(prices))
show_discounts(prices)

