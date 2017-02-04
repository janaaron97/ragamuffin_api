class NewTable < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer "user_id"
      t.string "word_listed"
      t.text "meaning"

      t.timestamps
    end
  end
end