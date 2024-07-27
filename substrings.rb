def substrings(string, dictionary)
  result = {}
  string = string.downcase
  dictionary.each do |word|
    if string.include?(word) # if "below".include?("below") -> true
      result[word] = string.scan(word).size #result["below"] = "below".scan("below").size -> 1
    end
  end
  result # {"below"=> 1}
end

if __FILE__ == $0

  string = ARGV[0]
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  puts substrings(string, dictionary)
end
