# Imagine you have eight developers (Alex, Bernadette, Charles, Dana, Eddie, Fernanda, Gus, and Hiro). They want to pair program together every day, but they don't like to repeat pairs.

#    Write an algorithm to generate a daily schedule which has seven full days
#    of pairing schedules without a single repeated pair.

class Group

  def mix_up(array)
    final_pairs = []
    until final_pairs.size == 7
      new_pair = array.sample(2)
      final_pairs << new_pair if !final_pairs.include?(new_pair)
    end
    final_pairs
  end

end

group1 = Group.new
group_of_devs = ["Alex", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"]
p group1.mix_up(group_of_devs)