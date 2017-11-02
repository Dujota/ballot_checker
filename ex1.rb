require 'pry'

# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd place. A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.
#
# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'} shows that this voter chose Smudge for first place, Tigger for 2nd, and Simba for 3rd. Smudge would be awarded 3 points, Tigger would be awarded 2 points, and Simba would be awarded 1 point.
#
# Tally up all the votes and determine who won.



halloween_custome_vote =
          [{ 1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba' },
           { 1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger' },
           { 1 => 'Bella', 2 => 'Boots', 3 => 'Smudge' },
           { 1 => 'Boots', 2 => 'Felix', 3 => 'Bella' },
           { 1 => 'Lucky', 2 => 'Felix', 3 => 'Bella' },
           { 1 => 'Smudge', 2 => 'Simba', 3 => 'Felix' }]



def vote_count(ballots)

  vote_count = {}
  vote_count.default = 0

  ballots.each do |ballot|
    ballot.each do |placement, name|
      # binding.pry
        if placement == 1
          vote_count[name] += 3

        elsif placement == 2
          vote_count[name] += 2

        else
          vote_count[name] += 1
        end

    end
  end
  p vote_count
end


vote_count(halloween_custome_vote)

  def vote_count_approach2(ballots)
    vote_count = {}
    vote_count.default = 0
    ballots.each do |ballot|
      binding.pry
      vote_count[ballot[1]] += 3
      vote_count[ballot[2]] += 2
      vote_count[ballot[1]] += 1
  end
  p vote_count
end

vote_count_approach2(halloween_custome_vote)
