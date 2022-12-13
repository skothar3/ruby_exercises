def substrings(word,subs)

    subs.reduce(Hash.new(0)) {|hash,str| word.match?(str) ? hash[str] += 1 : hash; hash}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)