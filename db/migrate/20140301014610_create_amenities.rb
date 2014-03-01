class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.integer :wifi
      t.string :power
      t.belongs_to :space

      t.timestamps
    end
  end
end
