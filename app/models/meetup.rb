class Meetup < ActiveRecord::Base
	scope :enabled, -> { where(:disabled => false) }
end
