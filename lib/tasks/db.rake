namespace :db do 
  Rake::Task['db:load_config'].enhance do
    Rake::Task['db:assure_skeletor_user'].invoke
  end

  # For local development you want to have credentials in ~/.my.cnf
  # [client]
  # user=root
  # password=

  task :assure_skeletor_user do 
    if Rails.env.development?
      unless File.exists?(".db_created") 
        puts "\nCreating skeletor user and permissions in MySQL\n"
        `mysql -uroot -e "source config/create_db_user.sql"`
        if $?.exitstatus == 0 
          File.open(".db_created", "w+") {|f| f.write Time.now }
        else
          puts "\nError encountered trying to setup database permissions from config/create_db_user.sql!"
          puts "\nFor local development you want to have credentials in ~/.my.cnf"
          puts "\n[client]"
          puts "user=root"
          puts "password=yourpassword\n\n\n\n"
        end
      else
        puts "skeletor user and permissions already exist in MySQL"
      end
    end
  end
end