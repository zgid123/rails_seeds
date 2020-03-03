lib = File.expand_path('lib', __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rails_seeds/version'

Gem::Specification.new do |spec|
  spec.name                  = 'rails_seeds'
  spec.version               = RailsSeeds::VERSION
  spec.authors               = ['Alpha']
  spec.email                 = ['alphanolucifer@gmail.com']
  spec.summary               = 'Run seed data from individual file'
  spec.description           = 'Run seed data from individual file'
  spec.licenses              = ['MIT']
  spec.files                 = Dir['{lib/**/*,[A-Z]*}']
  spec.required_ruby_version = '>= 2.3'
  spec.homepage              = 'https://github.com/zgid123/rails_seeds'
end
