source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'rails', '~> 5.2.1'
gem 'puma', '~> 3.11'
gem 'pg'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bulma-rails', '~> 0.7.1'
gem 'simple_form'
gem 'haml'
gem 'jquery-rails', '~> 4.3.3'
gem 'remotipart', '~> 1.3.1'

gem 'file_validators', '~> 2.3.0'
gem 'validates_cpf_cnpj', '~> 0.2.0'
gem 'email_validator', '~> 1.6.0'

gem 'support', github: 'codhab/support', branch: :master

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

path 'engines' do
  gem 'candidate'
  gem 'entity'  
  gem 'common'
end