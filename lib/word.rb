class Word
  @@all_words = []
  attr_reader :word_name, :definitions#, :id
  # attr_accessor
  def initialize(attributes)
    @word_name = attributes.fetch(:word_name)
    @definitions = [attributes.fetch(:definition)]
    @id = @@all_words.length + 1
  end

  def save
  end

  def self.find
  end

  def self.clear
  end


  def self.all
  end

end
