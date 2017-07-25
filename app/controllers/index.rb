get '/' do
  @decks = Deck.all
  puts 'monkey'

  erb :"/index"
end
