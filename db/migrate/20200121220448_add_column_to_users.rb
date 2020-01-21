class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :personality_id, :integer
  end
end
