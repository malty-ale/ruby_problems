=begin
In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
=end

def caesar_cipher(string,shift)
  
  string_array = string.scan(/./)
  
  ascii_array = []
  
  string_array.each do |i|
    ascii_array.push(i.ord)
  end
  
  ascii_array.map! do |j|
    if (65..90).member?(j)
      if j+shift > 90
        (j + shift - 90 + 64).chr
      else
        (j + shift).chr
      end
    elsif (97..122).member?(j)
      if j+shift > 122
        (j + shift - 122 + 96).chr
      else
        (j + shift).chr
      end
    else
      j.chr
    end
  end
  
  result = ascii_array.join
  
  puts result
  
end

caesar_cipher("What a string!",5)