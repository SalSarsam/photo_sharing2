class CreateComts < ActiveRecord::Migration
  def change
    create_table :comts do |t|
      t.string :title
      t.text :content
      t.integer :comt_id
      
      t.timestamps
    end
  end
end
