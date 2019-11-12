class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.references :user, foeign_key: true
      t.references :category, foeign_key: true
      t.timestamps
    end
  end
end
