def substrings(string, dictionary)
    substring_count = Hash.new(0)
    dictionary.each do |word|
        matches = string.downcase.scan(word).length
        substring_count[word] = matches unless matches == 0
    end

    substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 p substrings("Howdy partner, sit down! How's it going?", dictionary)

 # { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
