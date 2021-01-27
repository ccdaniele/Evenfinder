class RemoveEventIdFromActivities < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :event_id, :integer
  end
end
