class AddEventIdToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :event_id, :integer
  end
end
