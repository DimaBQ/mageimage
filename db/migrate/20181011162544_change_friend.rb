class ChangeFriend < ActiveRecord::Migration[5.2]
  def change
  	change_column :friends, :people_list, :text, null: true
  end
end
