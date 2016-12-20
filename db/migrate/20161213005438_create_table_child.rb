class CreateTableChild < ActiveRecord::Migration
def change
    create_table :Child do |t|
      t.integer :ChildId, primary_key: true, null: false
      t.string :FirstName, limit: 40, null: true
      t.string :MiddleInitial, limit: 1, null: true
      t.string :LastName, limit: 40, null: false
      t.string :Phone, limit: 10, null: true
      t.string :Email, limit: 40, null: false
      t.date :DateOfBirth, null: true
      t.boolean :DeleteIndicator, null: false 
      t.timestamps
    end
  end
end