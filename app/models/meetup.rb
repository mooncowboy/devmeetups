class Meetup < ActiveRecord::Base
  acts_as_taggable_on :tags

	scope :enabled, -> { where(:disabled => false) }
end
