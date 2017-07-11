class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :date
      t.text :content
      t.string :sender_id

      t.timestamps
    end
  end
end
