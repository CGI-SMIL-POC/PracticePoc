class CreateTableParent < ActiveRecord::Migration
  def change
      create_table :Parent do |t|
      t.integer :ParentId, primary_key: true, null: false
      t.string :UserName, limit: 50, null: false
      t.string :Password, limit: 20, null: false
      t.string :FirstName, limit: 40, null: true
      t.string :MiddleInitial, limit: 1, null: true
      t.string :LastName, limit: 40, null: false
      t.string :Suffix, limit: 5 ,null: true
      t.date :DateOfBirth, null: true 
      t.string :Address, limit: 100, null: true
      t.integer :Zip, limit: 5, null: true
      t.string :HomePhone, limit: 10, null: true
      t.string :CellPhone, limit: 10, null: true
      t.string :Email, limit: 100, null: false
      t.string :FirstName, limit: 20, null: true
 
      t.timestamps
    end
  end
end