class AddUserIdToComt < ActiveRecord::Migration
  def change
    add_column :comts, :user_id, :integer
  end
end
