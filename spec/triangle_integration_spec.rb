require('rspec')
require('word.rb')



describe '#Word' do

  before(:each) do
    Word.clear()
  end


  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('Word') do
    describe('#save_word') do
      it('saves a word to an array') do
        Word.clear
        word1 = Word.new("happy")
        word1.save_word
        expect(Word.all).to(eq([word1]))
      end
    end
  end
end
