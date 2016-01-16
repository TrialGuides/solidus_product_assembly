Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'soludus_product_assembly'
  s.version     = '1.2.0.beta'
  s.summary     = 'Adds opportunity to make bundle of products to your Solidus store'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author            = 'Roman Smirnov'
  s.email             = 'POMAHC@gmail.com'
  s.homepage          = 'https://github.com/TrialGuides/solidus_product_assembly'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'solidus_backend', '~> 1.2.0'

  s.add_development_dependency 'active_model_serializers', '0.9.0.alpha1'
  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'database_cleaner', '~> 1.4'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'poltergeist', '~> 1.6'
  s.add_development_dependency 'rspec-rails', '~> 3.3.0'
  s.add_development_dependency 'sass-rails', '~> 4.0.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
