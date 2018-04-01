require 'ffaker'

namespace :users do
  task create: :environment do
    bar = TTY::ProgressBar.new("[:bar]")
    bar.iterate(1000.times) do |i|
      User.create(
        email:    FFaker::Internet.unique.email,
        password: 'qwerty',
        ssn:      "my_secret_ssn_#{i}"
      )
    end
  end
end
