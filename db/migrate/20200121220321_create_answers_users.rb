class CreateAnswersUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers_users do |t|
      t.integer :user_id
      t.string :response

      t.timestamps
    end
  end
end
