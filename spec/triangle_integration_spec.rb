require('rspec')
require('word.rb')



describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('Word') do
    describe('#save') do
      it('saves a word') do
        Word.clear
        word1 = Word.new("happy", nil)
        word1.save()
        expect(Word.all).to(eq([word1]))
      end
    end
  end
  describe('.clear') do
   it("clears all words") do
     word = Word.new("apple", nil)
     word.save()
     word2 = Word.new("animals", nil)
     word2.save()
     Word.clear()
     expect(Word.all).to(eq([]))
   end
 end
end
