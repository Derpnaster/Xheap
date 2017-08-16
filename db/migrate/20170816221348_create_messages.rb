class CreateMessages < ActiveRecord::Migration[5.0]
  def change

    drop_table :messages

    create_table :messages do |t|
      t.text :content

      t.timestamps
    end

    drop_table :personal_messages
    drop_table :conversations
  end
end
