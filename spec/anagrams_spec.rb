require('rspec')
require('anagrams')

describe(Anagrams) do
  describe('#gram_check') do
    it('tests if two words are anagrams') do
      test = Anagrams.new()
      expect(test.gram_check?("ruby", "bury")).to(eq("ruby and bury are anagrams!"))
    end
    it('tests if two words are anagrams even if has different capital letters') do
      test = Anagrams.new()
      expect(test.gram_check?("Ruby", "Bury")).to(eq("Ruby and Bury are anagrams!"))
    end
    it('tests if words contain a vowel') do
      test = Anagrams.new()
      expect(test.gram_check?("ctrb", "brct")).to(eq("please enter a real word"))
    end
    it('tests if words are an antigram') do
      test = Anagrams.new()
      expect(test.gram_check?("hi", "bye")).to(eq("hi and bye are antigrams!"))
    end
    it('tests for anagrams and antigrams in phrase') do
      test = Anagrams.new()
      expect(test.gram_check?("Sharpe", "phra se")).to(eq("Sharpe and phra se are anagrams!"))
    end
  end
end
