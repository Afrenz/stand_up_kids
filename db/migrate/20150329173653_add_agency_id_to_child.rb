class AddAgencyIdToChild < ActiveRecord::Migration
  def change
    add_column :children, :agency_id, :integer 
  end
end
