class Round < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  belongs_to :guess

  belongs_to :card, through: :guess
  belongs_to :card, through: :deck

  validates :user_id, presence: true
  validates :deck_id, presence: true

end
