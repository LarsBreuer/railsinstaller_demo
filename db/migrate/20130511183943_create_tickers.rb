class CreateTickers < ActiveRecord::Migration
  def change
    create_table :tickers do |t|
      t.integer :aktion_ID
      t.integer :spieler_ID

      t.timestamps
    end
  end
end
