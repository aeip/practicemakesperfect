class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.text :name
      t.text :description
      t.integer :sunday
      t.integer :monday
      t.integer :tuesday
      t.integer :wednesday
      t.integer :thursday
      t.integer :friday
      t.integer :saturday
      t.datetime :created_at

      t.timestamps
    end
  end
end
