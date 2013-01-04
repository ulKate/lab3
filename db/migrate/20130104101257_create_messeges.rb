class CreateMesseges < ActiveRecord::Migration
  def change
    create_table :messeges do |t|
      t.string :name
      t.string :topic
      t.text :body
      t.string :state

      t.timestamps
    end
  end
end
