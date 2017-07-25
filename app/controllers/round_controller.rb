post "/decks/:deck_id/rounds" do
  @round = Round.create(user: current_user, deck_id: params[:deck_id])

  redirect "/decks/#{@round.deck_id}/cards/1"
end

get "/rounds/:round_id/card/:card_id" do
  @round = Round.find(params[:round_id])
  @card = Card.find(params[:card_id])

  erb :"/rounds/show"
end
















