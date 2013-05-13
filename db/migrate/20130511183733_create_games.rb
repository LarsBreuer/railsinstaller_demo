class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :teamHeim
      t.integer :teamAuswaerts
      t.integer :toreHeim
      t.integer :toreAuswaerts

      t.timestamps
    end
  end
end
