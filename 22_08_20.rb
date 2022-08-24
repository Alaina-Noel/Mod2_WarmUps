class StringReverse

	def self.reverse(input)
		result = []
		i = 0
	array = input.split("")
	until i > input.length
		result << array.pop
		i += 1
	end
		result.join
	end
    
end


 p StringReverse.reverse("hello")