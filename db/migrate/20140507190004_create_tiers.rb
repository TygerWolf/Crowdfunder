class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|
      t.string :name
      t.text :description
      t.integer :price_in_dollars
      t.integer :project_id

      t.timestamps
    end
  end
end
