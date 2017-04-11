class CreateHilites < ActiveRecord::Migration[5.0]
  def change
    create_table :hilites do |t|
      t.text :code
      t.string :lexer
      t.string :style
      t.string :lineos
      t.string :divstyles
      t.string :api_url
      t.text :api_result

      t.timestamps
    end
  end
end
