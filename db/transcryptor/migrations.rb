# Transcryptor::Migration.draw do
#   define_encryption User,
#     field: :ssn,
#     options: {
#       key:       '67c3800d1572d9d964a6ff3bd821ed02',
#       algorithm: 'aes-256-gcm'
#     },
#     version: 20180401000000,
#     version_field: :encrypted_ssn_version # optional

#   define_encryption User,
#     field: :ssn,
#     options: {
#       key:       '0726c4d149fa59523bc47d592151584b',
#       algorithm: 'id-aes192-GCM'
#     },
#     version: 20180401000001

#   define_encryption User,
#     field: :ssn,
#     options: {
#       key:       '94dd7e2c40a3d51a8dd0a9137356a18e',
#       algorithm: 'RC2-64-CBC'
#     },
#     version: 20180401000002
# end
