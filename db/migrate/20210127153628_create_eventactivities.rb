class CreateEventactivities < ActiveRecord::Migration[6.1]
  def change
    create_table :eventactivities do |t|
      t.integer :event_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
