require 'Set'
class Anagrams
  attr_accessor(:word1, :word2)
  attr_reader(:word_bool, :real_words, :fake_words)

  def initialize(word1,word2)
    @word1=word1
    @word2=word2
    @word_bool = true
    @real_words =[]
    @fake_words =[]
  end

  def word_check?
    word_list = Set.new(File.readlines('lib/en.txt').collect(&:chomp))
    #sets up wordlist to be scanned
    wordcheck = @word1.downcase.split(' ') + @word2.downcase.split(' ')
    #prepares entered words to be compared to wordlist
    wordcheck.each do |x|
      if (word_list.include?(x))
        @real_words.push(x)
      else
        @fake_words.push(x)
      end
      #assigns each word to a word list depending if found
    end
  end

  def gram_check
    wordcheck = word1.split(' ') + word2.split(' ')
    #combines words accounts for users entering multiple words
    wordcheck.each do |x|
      if x !~ /[aeiouy]/i
        #checks if word has no vowels and ignores case
        @word_bool=false
        return "please enter a real word"
        #breaks and returns false if a non vowel word is entered
      end
    end
    if @word_bool === true
      #proceed if words passed the vowel test
      word_scan = @word1.scan(/[#{@word2}\W]/i).join('')
      #anagram check. Builds an array out of matching letters and then joins them to be checked based on length. Ignores whitespace, case, and punctuation.
      if word_scan.length === @word1.length
        "#{@word1} and #{@word2} are anagrams!"
      elsif word_scan.length === 0
        "#{@word1} and #{@word2} are antigrams!"
      else
        "#{@word1} and #{@word2} share #{word_scan.length} characters: #{word_scan}"
      end
      #returns results based on word_scan
    end
  end

  def palindrome_check(word)
    reverse_word_array = []
    word.split('').map { |e| reverse_word_array.unshift(e)}
    #longform way of reversing word
    if word.split('') === reverse_word_array
      "#{word} is a palindrome!"
    else
      "#{word} is not a palindrome :("
    end
    #checks is reverse matches original and returns results
  end
end
