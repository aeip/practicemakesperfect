class AddUserIdToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :user_id, :integer
    add_index :hobbies, :user_id
  end
end
