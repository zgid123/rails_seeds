module RailsSeeds
  class << self
    def retrieve_path(file)
      File.join(seed_folder, file)
    end

    def valid_file?(file)
      path = retrieve_path(file)

      return true if File.file?(path)

      puts "#{path} is invalid."

      false
    end

    def run(file, method = :system)
      path = RailsSeeds.retrieve_path(file)

      puts "Run seed #{path}"

      send(method, "rails runner #{path}")
    end

    private

    def seed_folder
      @seed_folder ||= File.join(Rails.root, 'db', 'seed')
    end
  end
end
