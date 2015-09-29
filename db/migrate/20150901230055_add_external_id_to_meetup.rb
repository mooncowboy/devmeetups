class AddExternalIdToMeetup < ActiveRecord::Migration
  def change
	  add_column :meetups, :external_id, :string
	  add_column :meetups, :external_image, :string
	  add_column :meetups, :source_site, :integer
	  add_index :meetups, [:source_site, :external_id], :unique => true
  end
end
