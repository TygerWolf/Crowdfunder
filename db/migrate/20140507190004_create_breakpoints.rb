class CreateBreakpoints < ActiveRecord::Migration
  def change
    create_table :breakpoints do |t|
      t.string :name
      t.text :description
      t.integer :Price_in_dollars

      t.timestamps
    end
  end
end
