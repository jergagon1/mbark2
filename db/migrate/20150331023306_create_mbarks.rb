class CreateMbarks < ActiveRecord::Migration
  def change
    create_table :mbarks do |t|
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :mbarks, :users
    add_foreign_key :mbarks, :events
  end
end
