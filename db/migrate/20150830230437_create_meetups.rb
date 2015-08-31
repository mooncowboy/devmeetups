class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :name, :null => :false
      t.text :description
      t.string :link, :null => :false
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
