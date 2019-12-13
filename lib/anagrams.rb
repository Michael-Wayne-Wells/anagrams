class Anagrams
  def initialize
  end
  def gram_check?(word1,word2)
    if (word1 =~ /[aeiouy]/) & (word2 =~ /[aeiouy]/)
      word_scan = word1.scan(/[#{word2}]/i).join('')
      word_scan.length === word1.length
    else
      "please enter a real word"
    end
  end
end
