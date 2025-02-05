def substrings(string, dictionary)
  res_hash = {}
  dictionary.each do |word|
    res_hash[word] = string.downcase.scan(word).count if string.downcase.include?(word)
  end
  res_hash
end
