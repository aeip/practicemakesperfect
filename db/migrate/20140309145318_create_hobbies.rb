class CreateHobbies < ActiveRecord::Migration
  def change
  	drop_table :hobbies
    create_table :hobbies do |t|
      t.string :name
      t.string :description
      t.datetime :schedule
      t.datetime :created_at

      t.timestamps
    end
  end
end
