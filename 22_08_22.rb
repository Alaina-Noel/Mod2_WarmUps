class Fibonacci
	#there is something funky going on with 2 & 3 that I havn't gotten to the bottom of yet.

	def generate_first_twenty_five
		puts "1 prime"
		puts "1 prime"
		previous_result = 1
		result = 2
			23.times do 
				require 'pry' ; binding.pry
				p result
				prime_num?(result)
				result += previous_result
				previous_result = result - previous_result
			end
	end

	def prime_num?(num)
		i = (num / 2.0).floor
		while i > 1
			if num == 2 || num == 3 || num == 5
				p "prime"
				return
			elsif num % i == 0
				p "not prime"
				return
			elsif
				p "prime"
				return
			end
		i -= 1
		end
	end

end

sequence = Fibonacci.new
sequence.generate_first_twenty_five


