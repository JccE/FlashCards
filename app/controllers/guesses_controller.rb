# new page
get '/decks/:deck_id/cards/:card_id/guesses/new' do
  @round = Round.create(user: current_user, deck: @deck)
  @deck = Deck.find(params[:deck_id])
  session[:available_cards] ||= @deck.cards.length
  @card = @deck.cards.find_by(id: params[:card_id])

  # until @round.available_cards == 0
  #   @deck.cards.each do |card|
  #     @card = card
  #     if params[:user_input].downcase == card.answer.downcase
  #       @correct = true
  #     else
  #       @correct = false
  #     end
  #     Guess.create(round: @round, card: card, correct?: @correct)
  #     @round.guessed_cards += 1
  #   end
  #   @round.available_cards -= 1
  # end

  erb :"guesses/new"
end

post '/decks/:deck_id/cards/:card_id/guesses' do
  @card = Card.find(params[:card_id])
  @round = Round.find(params[:round_id])

  if @card.answer.downcase.strip == params[:input].downcase.strip
    Guess.create(round: @round, card: @card, correct?: true)
    @result = "Congrats! You got it right!"
  else
    Guess.create(round: @round, card: @card, correct?: false)
    @result = "Nuts! We'll get it next time, no sweat."
  end

  # length of cards tried, get collection of cards that are not correct
  # go through those, and repeat.

  # redirect "/rounds/#{@round.id}/card/#{??????}"


end
