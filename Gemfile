source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 3.7'
gem 'attr_encrypted', '~> 3.1'
gem 'versioned_fields', path: '../versioned_fields'
gem 'transcryptor', path: '../transcryptor'
gem 'bcrypt'
gem 'ffaker', '2.8.1'
gem 'tty-progressbar'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end
