class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teamName
      t.string :teamKuerzel

      t.timestamps
    end
  end
end
