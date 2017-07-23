class Card < ApplicationRecord
  belongs_to :deck

  has_many :guesses
  has_many :rounds, through: :guesses, source: :round

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

end
