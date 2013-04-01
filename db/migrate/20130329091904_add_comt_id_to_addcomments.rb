class AddComtIdToAddcomments < ActiveRecord::Migration
  def change
    add_column :addcomments, :comt_id, :integer
  end
end
