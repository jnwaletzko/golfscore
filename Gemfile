source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "rails", "~> 6.0.0"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 3.11"
gem "jbuilder", "~> 2.5"
gem "react-rails"
gem "sass-rails", "~> 5"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.4.2", require: false
gem "sorbet-runtime"
gem "sorbet-rails"

group :development, :test do
  gem "annotate"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "pry"
  gem "pry-byebug"
  gem "standard"
  gem "sorbet"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
  gem "guard-rspec"
  gem "guard-standardrb"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "json_matchers"
  gem "webdrivers"
end
