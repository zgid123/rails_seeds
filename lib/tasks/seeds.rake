namespace :db do
  desc 'Run specific seed files in folder db/seed'
  task :seeds do
    _, *files = ARGV
    *files, last_file = files.select { |f| RailsSeeds.valid_file?("#{f}.rb") }

    files.each do |file|
      Rake::Task['db:seeds:exec'].reenable
      Rake::Task['db:seeds:exec'].invoke(file)
    end

    RailsSeeds.run("#{last_file}.rb", :exec) if last_file.present?
  end

  namespace :seeds do
    desc 'Run all seed files in folder db/seed'
    task :all do
      Dir[File.join(Rails.root, 'db', 'seed', '*.rb')].each do |path|
        Rake::Task['db:seeds:exec'].reenable
        Rake::Task['db:seeds:exec'].invoke(File.basename(path, '.rb'))
      end
    end

    task :exec, :seed do |_, args|
      file = "#{args[:seed]}.rb"

      RailsSeeds.run(file)
    end
  end
end
