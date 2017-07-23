class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null:false, limit: 64
      t.string :email, null:false, limit: 128
      t.string :password_hash, null: false
      # t.belongs_to :something
      # t.references :something
      t.timestamps
    end
  end
end
