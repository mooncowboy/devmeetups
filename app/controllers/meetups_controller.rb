class MeetupsController < ApplicationController
  def index
  	@meetups = Meetup.enabled
  end

  def show

  end
end
