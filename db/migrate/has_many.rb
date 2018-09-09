class BelongsTo < ActiveRecord::Migration[7.1]
  def change
    create_table :people, force: true do |table|
      table.string :name, null: false
      table.references :role
      table.integer :location_id
      table.integer :manager_id
      table.integer :salary, null: false
    end

    create_table :roles, force: true do |table|
      table.string :name, null: false
      table.boolean :billable, null: false, default: false
    end

    create_table :locations, force: true do |table|
      table.string :name, null: false
      table.integer :region_id, null: false, default: 0
      table.integer :billable, null: false, default: 1
    end

    create_table :regions, force: true do |table|
      table.string :name, null: false
    end
  end
end
