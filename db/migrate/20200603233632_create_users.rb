class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :email
      t.string :password
      t.string :bio
      t.integer :age
      t.string :img_url
      t.string :phone_number
      t.timestamps
    end
  end
end
