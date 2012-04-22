class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :paypal_email
      t.string :slug

      t.timestamps
    end
  end
end
