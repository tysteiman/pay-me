class AddCompletedToLoans < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :completed, :boolean, default: false
  end
end
