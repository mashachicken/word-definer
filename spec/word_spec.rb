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
        word1 = Word.new("happy", nil, "a good feeling")
        word1.save()
        expect(Word.all).to(eq([word1]))
      end
    end
  end
  describe('.clear') do
   it("clears all words") do
     word = Word.new("apple", nil, "fruit")
     word.save()
     word2 = Word.new("animals", nil, "best friends")
     word2.save()
     Word.clear()
     expect(Word.all).to(eq([]))
   end
 end
 describe('.find') do
  it("finds a word by id") do
    word = Word.new("earthquake", nil, "shaking of earth surface")
    word.save()
    word2 = Word.new("lightning", nil, "the flashing of light" )
    word2.save()
    expect(Word.find(word.id)).to(eq(word))
  end
end
describe('#update') do
  it("updates a definition") do
    word = Word.new("breadsticks", nil, "food")
    word.save()
    word.update("food nom nom")
    expect(word.definitions).to(eq("food nom nom"))
  end
end
describe('#deleteDef') do
  it("deletes a definition") do
    word = Word.new("anxiety", nil, "a feeling of worriness")
    word.save()
    word.deleteDef(" ")

    expect(word.definitions).to(eq(" "))
  end
end
end
