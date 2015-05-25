namespace :offers do
  desc "Output posts count"
  task :send_list => :environment do
    User.send_offer_list
  end
end
