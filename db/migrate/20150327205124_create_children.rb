class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :sex
      t.text :bio

      t.timestamps null: false
    end
  end
end
