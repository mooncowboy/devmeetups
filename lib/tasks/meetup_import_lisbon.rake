namespace :dm do
  task :meetup_import_lisbon => :environment do
  	parser = MeetupComParser.new
  	parser.get_items('PT')
  end
end