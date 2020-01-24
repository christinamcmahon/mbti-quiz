class AddColumnToPersonalities < ActiveRecord::Migration[6.0]
  def change
    add_column :personalities, :nickname, :string
    add_column :personalities, :brief, :string
  end
end
