class CreateAddcomments < ActiveRecord::Migration
  def change
    create_table :addcomments do |t|
      t.text :content

      t.timestamps
    end
  end
end
