class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.references :user
      t.references :room
      t.text :message
      t.timestamps
    end
  end
end
