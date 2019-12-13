class Anagrams
  def initialize
  end
  def gram_check?(word1,word2)
    if (word1 =~ /[aeiouy]/) & (word2 =~ /[aeiouy]/)
      word_scan = word1.scan(/[#{word2}]/i).join('')
      if word_scan.length === word1.length
        "#{word1} and #{word2} are anagrams!"
      elsif word_scan.length === 0
        "#{word1} and #{word2} are antigrams!"
      end
    else
      "please enter a real word"
    end
  end
end
