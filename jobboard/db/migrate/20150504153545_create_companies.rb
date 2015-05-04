class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :mail
      t.integer :num
      t.string :address
      t.string :description

      t.timestamps null: false
    end
  end
end
