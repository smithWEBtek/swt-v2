class CreatePostSections < ActiveRecord::Migration[5.0]
  def change
    create_table :post_sections do |t|
      t.integer :post_id
      t.integer :section_id

      t.timestamps
    end
  end
end
