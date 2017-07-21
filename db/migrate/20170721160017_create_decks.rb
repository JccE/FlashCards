class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :name, limit: 64, null: false

      t.timestamps
    end
  end
end
