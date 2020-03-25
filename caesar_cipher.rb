def caesar_cipher(text, num_to_move)
  text.split("").map { |letter|
    if letter =~ /[A-Za-z]/
      shifted = (((letter.downcase.ord - 97 + num_to_move) % 26) + 97).chr
      ciphered = (letter == letter.upcase ? shifted.upcase : shifted)
    else
      letter
    end
  }.join("")
end

puts caesar_cipher("What a string!", 5)