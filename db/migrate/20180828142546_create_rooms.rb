class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :place
      t.integer :floor
      t.integer :nseat
      t.integer :hopen
      t.integer :minopen
      t.integer :hclose
      t.integer :minclose
      t.string :occupation
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
