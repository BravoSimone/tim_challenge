class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.text :text
      t.string :author
      t.integer :category
      t.timestamps
    end
  end
end
