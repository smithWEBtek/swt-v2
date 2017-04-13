class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :outline
      t.text :summary
      t.date  :date
      t.text :picture
      t.text :picture_url
      t.text :picture_short_name
      t.timestamps
    end
  end
end
