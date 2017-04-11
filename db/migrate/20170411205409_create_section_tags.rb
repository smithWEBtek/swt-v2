class CreateSectionTags < ActiveRecord::Migration[5.0]
  def change
    create_table :section_tags do |t|
      t.integer :section_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
