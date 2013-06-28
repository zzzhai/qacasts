class AddWizardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wizard, :boolean, :default => false
  end
end
