class MeetupsController < ApplicationController
  def index
  	@meetups = Meetup.all
  end

  def show

  end
end
