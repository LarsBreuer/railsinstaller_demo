class CreateSpielers < ActiveRecord::Migration
  def change
    create_table :spielers do |t|
      t.string :spielerName
      t.integer :teamID

      t.timestamps
    end
  end
end
