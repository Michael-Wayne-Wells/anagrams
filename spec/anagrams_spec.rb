require('rspec')
require('anagrams')

describe(Anagrams) do
  describe('#gram_check') do
    it('tests if two words are anagrams') do
      test = Anagrams.new()
      expect(test.gram_check?("ruby","bury")).to(eq(true))
    end
    it('tests if two words are anagrams even if has different capital letters') do
      test = Anagrams.new()
      expect(test.gram_check?("Ruby","Bury")).to(eq(true))
    end
    it('tests if words contain a vowel') do
      test = Anagrams.new()
      expect(test.gram_check?("ctrb","brct")).to(eq("please enter a real word"))
    end
  end
end
