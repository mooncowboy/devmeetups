class AddDisabledToMeetup < ActiveRecord::Migration
  def change
  	add_column :meetups, :disabled, :bool, :default => false
  end
end
