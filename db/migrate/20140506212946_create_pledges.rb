class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :Price_in_dollars

      t.timestamps
    end
  end
end
