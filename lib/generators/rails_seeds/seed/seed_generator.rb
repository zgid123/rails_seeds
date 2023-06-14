module RailsSeeds
  module Generators
    class SeedGenerator < ::Rails::Generators::Base
      def create_seed
        file = ARGV.first&.gsub(/.rb/, '')
        seed_folder = File.join(Rails.root, 'db', 'seed')

        return puts 'Must provide file name' if file.blank?

        FileUtils.mkdir_p(seed_folder) unless File.exist?(seed_folder)

        path = File.join(seed_folder, "#{Time.now.strftime('%Y%m%d%H%M%S')}_#{file.underscore}.rb")
        FileUtils.touch(path)

        puts "Create seed file #{path}"
      end
    end
  end
end
