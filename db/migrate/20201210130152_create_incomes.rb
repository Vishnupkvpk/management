class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.references :category, null: false, foreign_key: true
      t.integer :amount
      t.string :description
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
