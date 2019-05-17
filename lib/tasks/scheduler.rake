# desc "This task is called by the Heroku scheduler add-on"
task :mixpanel_users => :environment do
  Resque.enqueue(TakeAction, "")
end