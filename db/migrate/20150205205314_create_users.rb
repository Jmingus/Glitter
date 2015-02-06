class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :profile_name, null: false
      t.string :location, null: false
      t.string :photo_url, null: false
      t.string :bio

      t.timestamps null: false
    end
  end
end
