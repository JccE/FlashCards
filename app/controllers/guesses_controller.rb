post '/guesses' do
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

  redirect "/rounds/#{@round.id}/card/#{??????}"


end
