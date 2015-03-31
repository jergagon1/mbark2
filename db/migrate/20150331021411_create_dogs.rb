class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :image
      t.string :breed
      t.string :size
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :dogs, :users
  end
end
