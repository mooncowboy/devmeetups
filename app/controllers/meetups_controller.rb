class MeetupsController < ApplicationController
  def index
  	@meetups = Meetup.enabled
  end
end
