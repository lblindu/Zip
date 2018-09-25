class CreateZipcodedatabases < ActiveRecord::Migration[5.2]
  def change
    create_table :zipcodedatabases do |t|
      t.string :zip
      t.string :City
      t.string :state
      t.string :StateAbb
      t.string :county

      t.timestamps
    end
  end
end
