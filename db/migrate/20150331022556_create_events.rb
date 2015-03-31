class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :time
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.text :description

      t.timestamps null: false
    end
  end
end
