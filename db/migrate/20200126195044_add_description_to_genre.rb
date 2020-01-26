class AddDescriptionToGenre < ActiveRecord::Migration[6.0]
  def change
    add_column :genres, :description, :string
  end
end
