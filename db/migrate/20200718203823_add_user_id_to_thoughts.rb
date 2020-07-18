class AddUserIdToThoughts < ActiveRecord::Migration[5.2]
  def change
    add_column :thoughts, :user_id, :integer
  end
end
