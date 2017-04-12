namespace :db do
  desc 'db create, migrate, seed, restart'
  task heroku_reset: :environment do
    sh "rake db:migrate --app smithwebtek-v2"
    sh "rake db:seed --app smithwebtek-v2"
    sh "rails s --app smithwebtek-v2"
  end
end
