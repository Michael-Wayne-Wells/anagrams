require('rspec')
require('anagrams')

describe(Anagrams) do
  describe('#gram_check') do
    it('test') do
      test = Anagrams.new()
      expect(test.gram_check()).to(eq('test'))
    end
  end
end
