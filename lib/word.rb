class Word
  @@words = {}
  @@total_rows = 0
 attr_accessor :word, :id, :definitions

  def initialize(word, id)
    @definitions = []
    @id = id || @@total_rows += 1
  end
  def self.all()
    @@words.values()
  end
  def save
    @@words[self.id] = Word.new(self.word, self.id)
  end
  def ==(word_to_compare)
   self.word() == word_to_compare.word()
 end
  def get_defined(definition)
    @definitions.push(definition)
  end
  def self.clear
    @@words = {}
  end
  def self.find (string)
    string = string
    @@words.each do |word|
      if string == user_word.word
        return word
      end
    end
  end
end
