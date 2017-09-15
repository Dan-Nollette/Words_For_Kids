require 'rspec'
require 'word'
require 'pry'

describe("Contact") do
   describe("#word_name") do
     it("checks that word name reader method returns word name") do
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       expect(word1.word_name).to(eq("chair"))
     end
   end
  #  describe("#definitions") do
  #    it("checks that definitions reader method returns definitions") do
  #    end
  #  end
  #  describe("#id") do
  #    it("checks that id reader method returns id") do
  #    end
  #  end
  #  describe("#definitions=") do
  #    it("checks that definitions writer method updates definitions") do
  #    end
  #  end
  #  describe("#save") do
  #    it("checks that save method adds word to class variable all_words") do
  #    end
  #  end
  #  describe(".find") do
  #    it("checks that find method returns object with given id") do
  #    end
  #  end
  #  describe(".clear") do
  #    it("checks that clear method clears the all_words class variable") do
  #    end
  #  end
  #  describe(".all") do
  #    it("checks that this method returns the list of all words currently saved") do
  #    end
  #  end
end
