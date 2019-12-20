class Word
  @@words = {}
  @@total_rows = 0
 attr_accessor :word, :id, :definitions

  def initialize(word, id)
    @definitions = []
    @id = id || @@total_rows += 1
  end
  def save
    @@words[self.id] = Word.new(self.word, self.id)
  end
  def get_defined(definition)
    @definitions.push(definition)
  end
  def self.all()
    @@words
  end
  def self.clear
    @@words = {}
  end
end
