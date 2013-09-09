def say_moo number_of_moos
	puts 'mooooooo...' * number_of_moos
end

puts "how many moos?"
x = gets.chomp 
say_moo x.to_i
