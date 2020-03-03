namespace :db do
  desc 'Run specific seed files in folder db/seed'
  task :seeds do
    seed_folder = File.join(Rails.root, 'db', 'seed')
    _, *files = ARGV

    files.each do |file|
      file = "#{file}.rb"
      path = File.join(seed_folder, file)

      unless File.file?(path)
        puts "#{path} is invalid."

        next
      end

      puts "Run seed #{path}."

      exec "rails runner #{path}"
    end
  end

  namespace :seeds do
    desc 'Run all seed files in folder db/seed'
    task :all do
      Dir[File.join(Rails.root, 'db', 'seed', '*.rb')].each do |path|
        unless File.file?(path)
          puts "#{path} is invalid."

          next
        end

        puts "Run seed #{path}."

        exec "rails runner #{path}"
      end
    end
  end
end
