=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
=end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (text, array)
  answer = Hash.new
  array.each do |i|
    if text.downcase.scan(i.downcase).length > 0
      answer[i] = text.downcase.scan(i.downcase).length
    end
  end
  
  puts answer
end

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)