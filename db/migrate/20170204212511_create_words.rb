class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word_listed
      t.integer :user_id
      t.text :description

      t.timestamps null: false
    end
  end
end