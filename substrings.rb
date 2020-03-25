def substrings(string, arr)
  string_frequency = {}
  arr.each do |word|
    frequency = string.downcase.scan(word).length
    string_frequency[word] = frequency if frequency > 0
  end
  string_frequency
  
  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)