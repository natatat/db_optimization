require './config/environment'

namespace :db do

  task :seed_total => :environment do
    User.all.each do |user|
      user.update_attribute(:karma_total, user.total_karma)
      puts "#{user.first_name}: #{user.karma_total}"
    end
  end

end
