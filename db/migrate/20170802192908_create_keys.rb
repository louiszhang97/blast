class CreateKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :keys do |t|
      t.string :key

      t.timestamps
    end
  end
end
