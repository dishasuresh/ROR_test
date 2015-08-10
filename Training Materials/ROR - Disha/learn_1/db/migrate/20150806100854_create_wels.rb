class CreateWels < ActiveRecord::Migration
  def change
    create_table :wels do |t|
      t.string :firstname
      t.string :lastname
      t.string :desig
      t.string :origin

      t.timestamps null: false
    end
  end
end
