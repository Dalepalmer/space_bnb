class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :price
      t.date :date_available
      t.integer :user_id
    end
  end
end
