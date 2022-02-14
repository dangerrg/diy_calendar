class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :calendar
      t.text :description
      t.text :location
      t.bigint "calendar_id", null: false
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
