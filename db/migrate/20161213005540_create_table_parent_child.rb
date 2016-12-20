class CreateTableParentChild < ActiveRecord::Migration
  def change
    create_table :ParentChild do |t|
    	t.integer :ParentChildId, primary_key: true, null: false
    	t.integer :ParentId, null: false
    	t.integer :ChildId, null: false
    	t.integer :CaseWorkerId, null: false
    	t.boolean :DeleteIndicator, null: false 
		t.timestamps
    end
  end
end
