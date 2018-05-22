class User < ApplicationRecord
  include BCrypt

  attr_encrypted :ssn,
    key:       '67c3800d1572d9d964a6ff3bd821ed02',
    algorithm: 'aes-256-gcm'
    # key:       '94dd7e2c40a3d51a8dd0a9137356a18e',
    # algorithm: 'RC2-64-CBC'

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
