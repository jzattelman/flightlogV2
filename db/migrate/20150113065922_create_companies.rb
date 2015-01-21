class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :country
      t.string :state
      t.date :expiry_date

      t.timestamps null: false
    end
  end
end
