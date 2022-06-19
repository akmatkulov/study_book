def triple_block 
    puts 3 * yield 
end 

triple_block { 2 }
triple_block { 5 }