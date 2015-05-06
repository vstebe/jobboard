class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :offer_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
