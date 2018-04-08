class User < ApplicationRecord
  include BCrypt

  attr_encrypted :ssn,
    key:       '94dd7e2c40a3d51a8dd0a9137356a18e',
    algorithm: 'RC2-64-CBC'

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
