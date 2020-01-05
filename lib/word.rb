class Word
  @@words = {}
  @@total_rows = 0
  attr_accessor :word, :id, :definitions

  def initialize(word, id, definitions)
    @word = word
    @id = id || @@total_rows += 1
    @definitions = definitions
  end
  def self.all()
    @@words.values()
  end
  def save
    @@words[self.id] = Word.new(self.word, self.id, self.definitions)
  end
  def ==(word_to_compare)
    self.word() == word_to_compare.word()
  end
  def self.clear
    @@words = {}
  end
  def self.find (id)
    @@words[id]
  end
  def update(new_def)
    @definitions = new_def
  end
  def delete
    @@words.delete(self.id)
  end
end
