class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.integer :doctor_id

      t.timestamps
    end
  end
end
