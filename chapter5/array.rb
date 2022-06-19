prices = [2.99, 25.00, 9.99]

def total(prices)
    amount = 0 
    index = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end 
    amount 
end

def refund(prices)
    amount = 0 
    index = 0 
    while index < prices.length  
        amount -= prices[index]
        index += 1
    end 
    amount 
end 

def show_discounts(prices)
    index = 0 
    while index < prices.length  
        amount_off = prices[index] / 3.0
        puts format("Show Discount: $%.2f", amount_off)
        index += 1
    end 
end 

puts format("Total: $%.2f", total(prices))
puts format("Refund: $%.2f", refund(prices))
show_discounts(prices)

