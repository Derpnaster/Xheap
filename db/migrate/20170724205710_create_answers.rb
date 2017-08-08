class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :user, foreign_key: true
      t.string :username
      t.integer :question_id,  null: false
      t.string :email, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
