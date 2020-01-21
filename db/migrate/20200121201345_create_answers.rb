class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.boolean :introverted
      t.boolean :observant
      t.boolean :thinking
      t.boolean :judging
      t.integer :user_id

      t.timestamps
    end
  end
end
