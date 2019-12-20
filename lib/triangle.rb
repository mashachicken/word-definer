class Word
  @@all_words = []
  attr_accessor(:definition)

  def initialize(word)
    @definition = definition
  end
  
  get_defined()
end
