class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :post_id
      t.string :format
      t.text :content

      t.timestamps
    end
  end
end
