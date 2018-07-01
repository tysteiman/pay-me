class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :loan, foreign_key: true
      t.integer :amount
      t.boolean :approved, default: false
      t.text :notes

      t.timestamps
    end
  end
end
