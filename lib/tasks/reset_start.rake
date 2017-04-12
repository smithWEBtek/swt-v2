namespace :db do
  desc 'drop, create, migrate, seed, restart'
  task reset_restart: :environment do
    sh "rake db:drop"
    sh "rake db:create"
    sh "rake db:migrate"
    sh "rake db:seed"
    sh "rails s"
  end
end
