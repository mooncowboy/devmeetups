class HomeController < ApplicationController
  def index
    @meetups = Meetup.limit(3)
    @cities = City.limit(4)
    @tags = ActsAsTaggableOn::Tag.limit(6)
  end
end
