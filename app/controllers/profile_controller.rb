
# gets general stats for game
get '/profile' do 
	# get decks played 
		# number of decks
p "nothing to see here, move along!"
	# get cards 
		# played
		# correct
  # @user = User.find(1)
  # @decks = Deck.all
  # @cards_count = Card.count
  # @first_guess_correct = Card.all
  # @cards = Card.all
  # @correct_guesses = Guess.all.count

	erb :"/profile"
end


# gets individual users stats
get '/profile/:id' do 
@user = User.find_by(id: params[:id])
  # @user = User.find(1)
  @decks = Deck.all
  @cards_count = Card.count
  @first_guess_correct = Card.all
  @cards = Card.all
  @correct_guesses = Guess.all.count


	erb :"/single_user"
end

