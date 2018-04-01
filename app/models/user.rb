class User < ApplicationRecord
  include BCrypt

  attr_encrypted :ssn,
    key:       '67c3800d1572d9d964a6ff3bd821ed02',
    algorithm: 'aes-256-gcm'

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
