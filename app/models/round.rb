class Round < ApplicationRecord
  validates :user_id, presence: true
  validates :deck_id, presence: true

end
