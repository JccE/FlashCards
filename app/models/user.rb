class User < ApplicationRecord
  has_many :rounds

  validates :username, { presence: true }
  validates :password_hash, { presence: true }

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(password_new)
    password_hash = BCrypt::Password.create(password_new)
    @password = password_hash
  end

end
