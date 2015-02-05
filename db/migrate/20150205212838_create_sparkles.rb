class CreateSparkles < ActiveRecord::Migration
  def change
    create_table :sparkles do |t|
      t.belongs_to :user
      t.string :message

      t.timestamps null: false
    end
  end
end
