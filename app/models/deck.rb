class Deck < ApplicationRecord
  has_many :rounds
  has_many :users, through: :rounds

  has_many :cards
  has_many :guesses, through: :rounds, source: :guesses

  validates :name, presence: true
end
