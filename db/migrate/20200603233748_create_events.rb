class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :category
      t.string :location
      t.string :img_url 
      t.string :description
      t.references :user, foreign_key: true 
      t.datetime :date_time
      t.timestamps
    end
  end
end
