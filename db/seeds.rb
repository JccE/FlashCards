deck1 = Deck.create(name: "Nighthawks")

Card.create(question: "What is a nighthawk's primary food source?", answer: "insects", deck: deck1.id)
Card.create(question: "True or false?  Nighthawks are closely related to hawks.", answer: "false", deck: deck1.id)
Card.create(question: "True or false?  Nighthawks make nests.", answer: "false", deck_id: deck1.id)
Card.create(question: "Where do Common Nighthawks spend the winter?", answer: "South America", deck: deck1.id)
Card.create(question: "True or false?  Bullbat is another name for the Common Nighthawk.", answer: "true", deck: deck1.id)

deck2 = Deck.create(name: "Otters")

Card.create(question: "What is an otter's primary food source?", answer: "fish", deck: deck2.id)
Card.create(question: "True or false?  Otters spend the majority of their time on land.", answer: "true", deck: deck2.id)
Card.create(question: "How many species of otters are there?", answer: "13", deck: deck2.id)
Card.create(question: "True or false? Otters are native to Australia?", answer: "false", deck: deck2.id)
Card.create(question: "True or false? Otters make and use tools.", answer: "true", deck: deck2.id)
Card.create(question: "In years, what is the average life span of an otter in the wild?", answer: "10", deck: deck2.id)

