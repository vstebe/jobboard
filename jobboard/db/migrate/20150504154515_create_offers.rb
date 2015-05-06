class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :company_id
      t.string :title
      t.string :target
      t.string :description
      t.integer :duration
      t.date :creation_date
      t.date :start_date
      t.date :expiration_date
      t.string :contact
      t.integer :category_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end