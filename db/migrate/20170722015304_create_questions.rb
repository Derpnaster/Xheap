class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.string :username, null: false
      t.string :email
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
