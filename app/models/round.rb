class Round < ApplicationRecord
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :cards, through: :guesses

  validates :user_id, presence: true
  validates :deck_id, presence: true

  def available_cards
    @available_cards
  end

  def available_cards=(number)
    @available_cards = number
  end

  def guessed_cards
    @guessed_cards
  end

  def guessed_cards=(number)
    @guessed_cards = number
  end

end
