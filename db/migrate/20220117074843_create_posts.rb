class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content
      t.integer :vote, limit: 1, default: 0

      t.timestamps
    end
  end
end
