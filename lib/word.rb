class Word
  @@all_words = []
  attr_reader :word_name, :id
  attr_accessor :definitions
  def initialize(attributes)
    @word_name = attributes.fetch(:word_name)
    @definitions = [attributes.fetch(:definition)]
    @id = @@all_words.length + 1
  end

  def save
    @@all_words.push(self)
  end

  def self.find
  end

  def self.clear
    @@all_words = []
  end


  def self.all
    @@all_words
  end

end
