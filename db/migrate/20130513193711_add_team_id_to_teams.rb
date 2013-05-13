class AddTeamIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :teamID, :integer

  end
end
