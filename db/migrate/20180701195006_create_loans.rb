class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :amount
      t.integer :lender_id
      t.integer :borrower_id
      t.integer :amount_remaining
      t.string :name

      t.timestamps
    end
  end
end
