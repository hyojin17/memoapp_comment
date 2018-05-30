class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :memo_id
      t.string :user_email
      
      t.timestamps null: false
    end
  end
end
