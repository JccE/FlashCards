class Deck < ApplicationRecord
  belongs_to :round
  belongs_to :user, through: :round

  has_many :cards
  has_many :guesses, through: :cards
  has_many :rounds

  validates :name, presence: true
end
