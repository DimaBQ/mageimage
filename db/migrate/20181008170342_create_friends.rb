class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :account
      t.text :people_list, default: ","
      t.timestamps
    end
  end
end
