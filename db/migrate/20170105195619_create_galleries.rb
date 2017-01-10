class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :range_start
      t.integer :range_end

      t.timestamps null: false
    end
  end
end
