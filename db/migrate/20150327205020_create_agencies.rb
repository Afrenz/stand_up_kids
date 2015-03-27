class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
