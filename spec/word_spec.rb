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
   describe("#definitions") do
     it("checks that definitions reader method returns definitions") do
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       expect(word1.definitions).to(eq(["something you sit on"]))
     end
   end
   describe("#id") do
     it("checks that id reader method returns id") do
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       word1.save
       word2 = Word.new({word_name: "table", definition: "a raised flat surface" })
       expect(word1.id).to(eq(1))
       expect(word2.id).to(eq(2))
     end
   end
   describe("#definitions=") do
     it("checks that definitions writer method updates definitions") do
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       word1.definitions = ["a piece of furninture."]
       expect(word1.definitions).to(eq(["a piece of furninture."]))
     end
   end
   describe("#save") do
     it("checks that save method adds word to class variable all_words") do
       @@all_words = []
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       word1.save
       expect(@@all_words).to(eq([word1]))
     end
   end
  #  describe(".find") do
  #    it("checks that find method returns object with given id") do
  #    end
  #  end
   describe(".clear") do
     it("checks that clear method clears the all_words class variable") do
       @@all_words = ["a", "bunch", "of", "junk"]
       Word.clear
       expect(@@all_words).to(eq([]))
     end
   end
   describe(".all") do
     it("checks that this method returns the list of all words currently saved") do
       word1 = Word.new({word_name: "chair", definition: "something you sit on" })
       word1.save
       word2 = Word.new({word_name: "table", definition: "a raised flat surface" })
       word2.save
       expect(Word.all).to(eq([word1, word2]))
     end
   end
end
