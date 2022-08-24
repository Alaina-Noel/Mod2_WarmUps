class Letters
    attr_reader :sentence

    def initialize(sentence)
        @sentence = sentence
    end

    def letter_sorter
        output = Hash.new(0)
            @sentence.each do |letter|
            output[letter] += 1
        end
        output
    end

    def format_sorted_letters
        letter_sorter.map do |letter, count|
            puts "#{letter}: #{count}"
        end
    end

end