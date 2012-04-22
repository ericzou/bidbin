class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.boolean :default
      t.has_attached_file :file
      t.timestamps
      t.references :item
    end
  end
end
