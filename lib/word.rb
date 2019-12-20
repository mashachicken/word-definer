class Word
  @@words = []
  attr_accessor(:definition)

  def initialize(word, definition)
    @definition = definition
  end

  def self.all()
    @@words.values()
  end
  def self.clear
  @@words = {}
end
end
