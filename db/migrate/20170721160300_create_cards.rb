class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :question, limit: 128
      t.string :answer, limit: 128
      t.integer :deck_id

      t.timestamps
    end
  end
end
