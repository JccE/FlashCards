class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card

  validates :round_id, presence: true
  validates :card_id, presence: true
  validates_inclusion_of :correct?, :in => [true, false]
end
