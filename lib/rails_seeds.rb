require 'rails_seeds/version'
require 'rails_seeds/helpers'

module RailsSeeds
  require 'rails_seeds/railtie' if defined?(Rails)
end
