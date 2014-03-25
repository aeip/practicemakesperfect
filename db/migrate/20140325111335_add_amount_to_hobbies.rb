class AddAmountToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :amount, :integer
  end
end
