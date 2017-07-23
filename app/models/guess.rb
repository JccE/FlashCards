class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card
  # belongs_to :deck, through: :card
  # belongs_to :user, through: :round

  validates :round_id, presence: true
  validates :card_id, presence: true
  validates_inclusion_of :correct?, :in => [true, false]
end
