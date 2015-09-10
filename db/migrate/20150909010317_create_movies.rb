class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release
      t.text :description
      t.string :director
      t.string :stars

      t.timestamps null: false
    end
  end
end
