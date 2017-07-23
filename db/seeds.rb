deck1 = Deck.create(name: "Nighthawks")

card1 = Card.create(question: "What is a nighthawk's primary food source?", answer: "insects", deck: deck1)
card2 = Card.create(question: "True or false?  Nighthawks are closely related to hawks.", answer: "false", deck: deck1)
card3 = Card.create(question: "True or false?  Nighthawks make nests.", answer: "false", deck: deck1)
card4 = Card.create(question: "Where do Common Nighthawks spend the winter?", answer: "South America", deck: deck1)
card5 = Card.create(question: "True or false?  Bullbat is another name for the Common Nighthawk.", answer: "true", deck: deck1)

user1 = User.create(username: "mjcataldi", password_hash: BCrypt::Password.create("password"))
user2 = User.create(username: "jcce", password_hash: BCrypt::Password.create("password"))
user3 = User.create(username: "rrpatel25", password_hash: BCrypt::Password.create("password"))

round1 = Round.create(user: user1, deck: deck1)
round2 = Round.create(user: user2, deck: deck1)
round3 = Round.create(user: user3, deck: deck1)

guess1 = Guess.create(round: round1, card: card1, correct?: 1)
guess2 = Guess.create(round: round1, card: card2, correct?: 0)
guess3 = Guess.create(round: round1, card: card3, correct?: 1)
guess4 = Guess.create(round: round1, card: card4, correct?: 0)
guess5 = Guess.create(round: round1, card: card5, correct?: 1)
