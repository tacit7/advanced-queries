class CreateDb < ActiveRecord::Migration[7.1]
  def change
    create_table :people, force: true do |table|
      table.string :name, null: false
      table.references :role
      table.integer :location_id
      table.integer :manager_id
      table.integer :salary, null: false
      table.timestamps
    end

    create_table :roles, force: true do |table|
      table.string :name, null: false
      table.boolean :billable, null: false, default: false
      table.timestamps
    end

    create_table :locations, force: true do |table|
      table.string :name, null: false
      table.integer :region_id, null: false
      table.timestamps
    end

    create_table :regions, force: true do |table|
      table.string :name, null: false
      table.timestamps
    end
  end
end
