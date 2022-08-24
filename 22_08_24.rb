# Given a paragraph of text with multiple sentences, print out the five most commonly appearing letters along with their number of occurrences.

class Letters

  def take_away_spaces(string)
    string.gsub!(/\s+/, '').downcase.split("")
  end

  def tally_letter_occurances(array)
    hash_with_count = array.tally {|letter| letter}
    ordered = hash_with_count.sort_by {|key, value| value}.reverse
  end


  def format_top_5(two_dimensional_array)
    two_dimensional_array[0..4].map do |a, b|
      puts "The letter is #{a} and it occured #{b} times"
    end
  end

  def count_max_5(string)
    letters_array = take_away_spaces(string)
    talley_array = tally_letter_occurances(letters_array)
    format_top_5(talley_array)
  end


end

sentence = Letters.new
paragraph = "Given a paragraph of text with multiple sentences, print out the five most commonly appearing letters along with their number of occurrences."
sentence.count_max_5(paragraph)