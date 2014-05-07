class CreateBreakpoints < ActiveRecord::Migration
  def change
    create_table :breakpoints do |t|
      t.string :name
      t.text :description
      t.integer :price_in_dollars
      t.integer :project_id


      t.timestamps
    end
  end
end
