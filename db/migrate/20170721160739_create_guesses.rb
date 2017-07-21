class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :round_id
      t.integer :card_id
      t.boolean :correct?

      t.timestamps
    end
  end
end
