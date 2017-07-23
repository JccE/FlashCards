# get '/rounds' do
#   @deck = Deck.find_by(name: "Nighthawks")
#   @round = Round.create(user: current_user, deck: @deck)
#   @round.available_cards = @deck.cards.length
#   @round.guessed_cards = 0
#   until @round.available_cards == 0
#     @deck.cards.each do |card|
#       @card = card
#   #     if params[:user_input].downcase == card.answer.downcase
#   #       @correct = true
#   #     else
#   #       @correct = false
#   #     end
#   #     Guess.create(round: @round, card: card, correct?: @correct)
#       @round.guessed_cards += 1
#     end
#     @round.available_cards -= 1
#   end

#   erb :"rounds/show"
# end



get "/rounds/:round_id/card/:card_id" do
  @round = Round.find(params[:round_id])
  @card = Card.find(params[:card_id])

  erb :"/rounds/show"
end
















