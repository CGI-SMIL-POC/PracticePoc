class CreateTableCaseWorker < ActiveRecord::Migration
  def change
    create_table :CaseWorker do |t|
    	t.integer :CaseWorkerId, primary_key: true, null: false
    	t.string :FirstName, limit: 40, null: true
      	t.string :LastName, limit: 40, null: false
      	
		t.timestamps
    end
  end
end
