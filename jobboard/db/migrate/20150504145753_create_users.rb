class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :surname
      t.string :first_name
      t.string :mail
      t.integer :promo
      t.integer :companie_id
      t.integer :offer_id

      t.timestamps null: false
    end
  end
end
