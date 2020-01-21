class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :question
      t.string :option1
      t.string :option2

      t.timestamps
    end
  end
end
