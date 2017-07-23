class Deck < ApplicationRecord
  has_many :rounds
  has_many :users, through: :rounds

  has_many :cards
  has_many :guesses, through: :cards
  has_many :rounds

  validates :name, presence: true
end
