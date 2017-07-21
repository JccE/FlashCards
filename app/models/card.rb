class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

end
