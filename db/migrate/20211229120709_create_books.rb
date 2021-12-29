class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_enum :genres, %w[fiction nonfiction biography science_fiction mystery]
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.string :blurb
      t.text :long_description
      t.float :cost
      t.integer :how_many_printed
      t.datetime :approved_at
      t.date :release_on
      t.time :time_of_day
      t.boolean :selected
      t.enum :genre, enum_type: :genres

      t.timestamps
    end
  end
end
