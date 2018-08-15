ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def ballot_count(ballot)
  name = {}
  ballot.each do |hash|
    hash.values.each do |names|
      if name.include?(names) == false
        name["#{names}"] = 0
      end
    end
  end

  ballot.each do |hash|
    person = []
    hash.values.each do |names|
      person << names
    end
    name.each do |names, votes|
      if names == person[0]
        name[names] += 3
      elsif names == person[1]
        name[names] += 2
      elsif names == person[2]
        name[names] += 1
      end
    end
  end
  puts name.inspect
  puts "The winner is #{name.key(name.values.sort.last)} with #{name.values.sort.last} votes."
end

ballot_count(ballots)
