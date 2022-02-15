class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.string :name
      t.string :background_color, limit: 7
      t.string :text_color

      t.timestamps
    end
  end
end
