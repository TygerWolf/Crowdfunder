class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :Goal_in_dollars


      t.timestamps
    end
  end
end
