VersionedFields::Migrations.draw_for(User, :ssn) do
  User.instance_eval do
    include Transcryptor::Decoder
  end

  version 20180401000000
  version(20180401000001) do
    # Previous settings
    transcryptor_decode(
      key:       '67c3800d1572d9d964a6ff3bd821ed02',
      algorithm: 'aes-256-gcm'
    )
  end

  version(20180401000002) do
    # Previous settings
    transcryptor_decode(
      key:       '94dd7e2c40a3d51a8dd0a9137356a18e',
      algorithm: 'RC2-64-CBC'
    )
  end
end