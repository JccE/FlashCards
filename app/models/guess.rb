class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card

  validates :round_id, presence: true
  validates :card_id, presence: true
  validates :correct_guess, presence: true
end
