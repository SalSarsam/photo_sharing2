class AddAttachmentImageToPics < ActiveRecord::Migration

  def self.up
    add_column :pics, :image_file_name, :string
    add_column :pics, :image_content_type, :string
    add_column :pics, :image_file_size, :integer
    add_column :pics, :image_updated_at, :datetime
  end

  def self.down
    remove_column :pics, :image_file_name
    remove_column :pics, :image_content_type
    remove_column :pics, :image_file_size
    remove_column :pics, :image_updated_at
  end
end
  
   
     
 # def self.up
  #  change_table :pics do |t|
   #   t.attachment :image
   # end
 # end

 # def self.down
 #   drop_attached_file :pics, :image
 # end
#end
