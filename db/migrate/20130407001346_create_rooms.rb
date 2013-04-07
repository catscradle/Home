class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :NorthImage
      t.string :SouthImage
      t.string :EastImage
      t.string :WestImage
      t.integer :NorthRoom
      t.integer :SouthRoom
      t.integer :EastRoom
      t.integer :WestRoom

      t.timestamps
    end
  end
end
