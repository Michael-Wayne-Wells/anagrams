require('set')
class Anagrams
  def initialize
    @word_bool = false
  end

  def word_check?(word1,word2)
    is_word = Set.new(File.readlines('lib/en.txt').collect(&:chomp))
    if (is_word.include?(word1)) & (is_word.include?(word2))
      @word_bool = true
    end
    return @word_bool
  end

  def gram_check(word1, word2)
    wordcheck = word1.split(' ') + word2.split(' ')
    wordcheck.each do |x|
      if x =~ /[aeiouy]/i
        @word_bool = true
      else
        @word_bool=false
        return "please enter a real word"
      end
    end
    if @word_bool === true
      word_scan = word1.scan(/[#{word2}]/i).join('')
      if word_scan.length === word1.length
        "#{word1} and #{word2} are anagrams!"
      elsif word_scan.length === 0
        "#{word1} and #{word2} are antigrams!"
      else
        "#{word1} and #{word2} share #{word_scan.length} characters: #{word_scan}"
      end
    end
  end
end
