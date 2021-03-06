class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :page_count
      t.string :author
      t.datetime :release_date
      t.string :synopsis

      t.timestamps
    end
  end
end
