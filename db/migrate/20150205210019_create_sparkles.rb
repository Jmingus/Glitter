class CreateSparkles < ActiveRecord::Migration
  def change
    create_table :sparkles do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
