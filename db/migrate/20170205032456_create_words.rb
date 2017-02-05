class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word_listed
      t.text :meaning
      t.integer :user_id

      t.timestamps
    end
  end
end
