class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :description
      t.date :published_at
      t.text :intro
      t.text :extended
      t.timestamps
    end
  end
end
