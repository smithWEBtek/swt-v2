class CreatePostSections < ActiveRecord::Migration[5.0]
  def change
    create_table :post_sections do |t|
      t.text :content
      t.integer :number
      t.integer :post_id

      t.timestamps
    end
  end
end
