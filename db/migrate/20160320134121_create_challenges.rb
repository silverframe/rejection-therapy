class CreateChallenges < ActiveRecord::Migration
  def change
      create_table :challenges do |t|
      t.text :content
    end
  end
end
