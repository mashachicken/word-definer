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
 describe('.find') do
  it("finds a word by id") do
    word = Word.new("earthquake", nil)
    word.save()
    word2 = Word.new("lightning", nil)
    word2.save()
    expect(Word.find(word.id)).to(eq(word))
  end
end
describe('#update') do
  it("updates a word by id") do
    word = Word.new("breadsticks", nil)
    word.save()
    word.update("pumpkin")
    expect(word.word).to(eq("pumpkin"))
  end
end
describe('#delete') do
  it("deletes an album by id") do
    word = Word.new("anxiety", nil)
    word.save()
    word2 = Word.new("self-care", nil)
    word2.save()
    word.delete()
    expect(Word.all).to(eq([word2]))
  end
end


end
