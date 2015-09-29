# utf-8
require 'rest-client'

# parser for meetup.com
class MeetupComParser
	def initialize
		
	end

	def get_items(country)
		params = {
			:key => '',
			:city => 'Lisbon',
			:country => 'PT',
			:format => 'json',
			:category => '34',
			:page => '200'
		}

		response = RestClient.get "https://api.meetup.com/2/groups", {:params => params} 
		response_hash = JSON.parse(response)

		response_count = response_hash["results"].length
		total_count = response_hash["meta"]["total_count"].to_i
		diff_count = total_count - response_count

		puts "Importing #{response_count} of #{total_count}"

		response_hash["results"].each do |result|
			meetup = Meetup.new
			meetup.name = result["name"]
			meetup.link = result["link"]
			meetup.description = result["description"]
			meetup.external_id = result["id"]
			meetup.external_image = result["group_photo"] ? result["group_photo"]["thumb_link"] : ''
			meetup.source_site = 1
			meetup.save
		end



		# RMeetup::Client.api_key = "411040253810693d6768327eb266b60"
		# groups = RMeetup::Client.fetch(:groups, :params)
		# groups.each do |key, group_data|
		# 	meetup = Meetup.new
		# 	debugger
		# 	# meetup.name = group_data["name"].to_s
		# 	# meetup.link = group_data["link"].to_s
		# 	# meetup.description = group_data["description"]
		# 	# meetup.save!
		# end
		# puts groups
	end
end