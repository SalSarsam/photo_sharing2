class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.references :comt

      t.timestamps
    end
    add_index :pics, :comt_id
  end
end
