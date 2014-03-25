class AddHoursToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :hours, :integer
  end
end
