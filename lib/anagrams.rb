class Anagrams
  def initialize
  end
  def gram_check?(word1,word2)
  word_scan = word1.scan(/[#{word2}]/).join('')
   word_scan.length === word1.length
  end
end
