require 'Set'
class Anagrams
  attr_accessor(:word1, :word2)
  attr_reader(:word_bool, :real_words, :fake_words)
  def initialize(word1,word2)
    @word1=word1
    @word2=word2
    @word_bool = false
    @real_words =[]
    @fake_words =[]
  end
  def word_check?
    word_list = Set.new(File.readlines('lib/en.txt').collect(&:chomp))
    wordcheck = @word1.downcase.split(' ') + @word2.downcase.split(' ')
    wordcheck.each do |x|
      if (word_list.include?(x))
        @real_words.push(x)
      else
        @fake_words.push(x)
      end
    end
  end
  def gram_check
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
      word_scan = @word1.scan(/[#{@word2}]/i).join('')
      if word_scan.length === @word1.length
        "#{@word1} and #{@word2} are anagrams!"
      elsif word_scan.length === 0
        "#{@word1} and #{@word2} are antigrams!"
      else
        "#{@word1} and #{@word2} share #{word_scan.length} characters: #{word_scan}"
      end
    end
  end
  def palindrome_check(word)
    word_array = []
    word.split('').map { |e| word_array.unshift(e)}
    if word.split('') === word_array
      "#{word} is a palindrome!"
    else
      "#{word} is not a palindrome :("
    end
  end
end
