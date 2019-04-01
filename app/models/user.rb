class User < ApplicationRecord
  has_secure_password
  has_many :playlists

  enum role: {
    user: 0,
    admin: 1
  }
end
