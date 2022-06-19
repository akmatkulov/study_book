def my_block_result 
    result = yield 
    puts result 
end 

my_block_result {"Hello, World!"}
