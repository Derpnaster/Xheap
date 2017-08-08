class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :degree
      t.text :description

      t.timestamps
    end
  end
end
