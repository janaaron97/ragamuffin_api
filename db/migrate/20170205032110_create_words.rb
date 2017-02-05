class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word_listed
      t.text :meaning
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
