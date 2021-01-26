class CreateEventusers < ActiveRecord::Migration[6.1]
  def change
    create_table :eventusers do |t|
     t.integer :user_id
     t.integer :event_id
    end
  end
end
