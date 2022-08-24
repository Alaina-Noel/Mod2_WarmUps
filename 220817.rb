require './220817_b.rb'

puts "Inputs a sentence"

user_sentence = Letters.new(gets.chomp.split(""))

user_sentence.format_sorted_letters