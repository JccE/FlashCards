post '/guesses' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  @round = Round.find(params[:round_id])

  if @card.answer.downcase.strip == params[:input].downcase.strip
    Guess.create(round: @round, card: @card, correct?: true)
  else
    Guess.create(round: @round, card: @card, correct?: false)
  end
end
