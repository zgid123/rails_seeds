namespace :seeds do
  desc 'List all current seed files in db/seed'
  task :list do
    Dir[File.join(File.join(Rails.root, 'db', 'seed'), '*.rb')].each do |path|
      puts path
    end
  end
end
