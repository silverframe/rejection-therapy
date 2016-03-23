class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :challenge_id
      t.integer :user_id
      t.text :whatIdid
      t.text :whatIlearnt
      t.text :howToimprove
      t.file :image
      t.timestamps null: false
    end
  end
end
