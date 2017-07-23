module CardParser
   def self.parse(filename)
     deck = Deck.new()
     card_questions = []
     card_answers = []
     list = File.new(filename, "r")
     index = 1
     while (line = list.gets)
         if (index - 1) % 3 == 0
           card_questions << line
         elsif (index + 1) % 3 == 0
           card_answers << line
         end
         index += 1
      end
      index = 0
      while index < card_questions.length
         deck.add(Card.new(card_questions[index].slice(0..-2),card_answers[index].slice(0..-2)))
         index += 1
       end
     return cardset
   end
 end



# and what the seeds look like:



# legislators = LegislatorParser.parse('db/seed_files/nighthawk_flashcard.txt')