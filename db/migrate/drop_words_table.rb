class DropWordsTable < ActiveRecord::Migration
  def up
    drop_table :words
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end