class AddHomephoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :homephone, :string
  end
end
