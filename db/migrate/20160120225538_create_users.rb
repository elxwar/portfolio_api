class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :country
      t.string :postcode
      t.string :mobile
      t.string :telephone

      t.timestamps null: false
    end
  end
end
