class Anagrams




  def gram_check?(word1, word2)
    bool = false
    wordcheck = word1.split(' ') + word2.split(' ')
    wordcheck.each do |x|
      if x =~ /[aeiouy]/i
        bool = true
      else
        bool=true
        return "please enter a real word"
      end
    end

      if bool === true
        word_scan = word1.scan(/[#{word2}]/i).join('')
        if word_scan.length === word1.length
          "#{word1} and #{word2} are anagrams!"
        elsif word_scan.length === 0
          "#{word1} and #{word2} are antigrams!"
        end
    end
  end
end
