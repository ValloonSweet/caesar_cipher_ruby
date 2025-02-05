def caesar_cipher(string, shift) 
  @UPPERCASE_LETTER = ("A".."Z").to_a
  @LOWERCASE_LETTER = ("a".."z").to_a

  encrypted = ""
  string.split("").map do |letter|
    if @UPPERCASE_LETTER.include?(letter)
      encrypted += @UPPERCASE_LETTER[(@UPPERCASE_LETTER.index(letter) + shift) % 26]
    elsif @LOWERCASE_LETTER.include?(letter)
      encrypted += @LOWERCASE_LETTER[(@LOWERCASE_LETTER.index(letter) + shift) % 26]
    else
      encrypted += letter
    end
  end

  return encrypted
end
