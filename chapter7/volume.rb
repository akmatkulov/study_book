def volume(option)
    result = option[:depth] * option[:height] * option[:width]
    puts "Volume is #{result}"
end 

volume(width: 10, height: 5, depth: 2.5)
