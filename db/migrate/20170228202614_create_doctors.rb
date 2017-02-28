class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :officename
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.text :description
      t.decimal :price_initial
      t.decimal :price_renewal
      t.integer :length_visit
      t.boolean :insurance_accepted
      t.string :languages
      t.integer :years_practiced

      t.timestamps
    end
  end
end
