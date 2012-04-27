class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.boolean :default
      t.has_attached_file :file
      t.timestamps
      t.integer :picture_position
      t.references :item
    end
  end
end
