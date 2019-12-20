class Word
  @@words = []
  @@total_rows = 0
  attr_accessor(:definition)

  def initialize(word, id)
    definition = []
    @id = id || @@total_rows += 1
    @definition = definition
  end
  def save
    @@words[self.id] = Word.new(self.word, self.id)
  end
  def get_defined(definition)
    @@words.push(definition)
  end
  def self.all()
    @@words
  end
  def self.clear
    @@words = []
  end
end
