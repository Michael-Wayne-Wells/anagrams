require('rspec')
require('anagrams')

describe(Anagrams) do
  describe('#gram_check') do
    it('tests if two words are anagrams') do
      test = Anagrams.new("ruby", "bury")
      expect(test.gram_check).to(eq("ruby and bury are anagrams!"))
    end
    it('tests if two words are anagrams even if has different capital letters') do
      test = Anagrams.new("Ruby", "Bury")
      expect(test.gram_check).to(eq("Ruby and Bury are anagrams!"))
    end
    it('tests if words contain a vowel') do
      test = Anagrams.new("ctrb", "brct")
      expect(test.gram_check).to(eq("please enter a real word"))
    end
    it('tests if words are an antigram') do
      test = Anagrams.new("hi", "bye")
      expect(test.gram_check).to(eq("hi and bye are antigrams!"))
    end
    it('tests for anagrams and antigrams while ignoring whitespace') do
      test = Anagrams.new("Sharpe", "phra se")
      expect(test.gram_check).to(eq("Sharpe and phra se are anagrams!"))
    end
    it('tests for anagrams and antigrams while ignoring non-letter characters') do
      test = Anagrams.new("Sharpe", "phra! se")
      expect(test.gram_check).to(eq("Sharpe and phra! se are anagrams!"))
    end
    it('returns count of matching characters when not an anagram or antigram') do
      test = Anagrams.new("pirate", "party")
      expect(test.gram_check).to(eq("pirate and party share 4 characters: prat"))
    end
    it('tests for anagrams and antigrams while ignoring non-letter characters') do
      test = Anagrams.new("Sharp", "fhjurt")
      expect(test.word_check?).to(eq(false))
    end
    it('tests to check for palindromes') do
      test = Anagrams.new("kayak", "steve")
      expect(test.palindrome_check(test.word1)).to(eq("kayak is a palindrome!"))
      expect(test.palindrome_check(test.word2)).to(eq("steve is not a palindrome :("))
    end
  end
end
