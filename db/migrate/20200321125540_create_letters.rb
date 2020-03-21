class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.string :title
      t.string :author_name
      t.string :author_city
      t.text :body

      t.timestamps
    end
  end
end
