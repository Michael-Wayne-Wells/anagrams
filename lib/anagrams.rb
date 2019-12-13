class Anagrams
  attr_reader(:anagrams, :antigrams)
  def initialize
    @anagrams = []
    @antigrams = []

  end
  def gram_check?(word1, word2)

          if (word1 =~ /[aeiouy]/i) & (word2 =~ /[aeiouy]/i)
            word_scan = word1.scan(/[#{word2}\s]/i).join('')
            if word_scan.length === word1.length
              @anagrams.push(word2)
            elsif word_scan.length === 0
              @antigrams.push(word2)
            end
          else
            return "please enter a real word"
          end
  end
end
