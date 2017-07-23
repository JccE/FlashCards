class Round < ApplicationRecord
  belongs_to :user
  belongs_to :deck

  has_many :guesses
  has_many :cards, through: :guesses

  validates :user_id, presence: true
  validates :deck_id, presence: true
end
