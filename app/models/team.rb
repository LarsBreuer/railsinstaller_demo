class Team < ActiveRecord::Base
	has_many :spielers
	belongs_to :game

	before_destroy :ensure_not_referenced_by_any_spieler
	# ensure that there are no spieler referencing this team
	def ensure_not_referenced_by_any_spieler
		if spielers.count.zero?
			return true
		else
			errors.add(:base, 'SPRACHE: Kann nicht gelöscht werden: Spieler vorhanden' )
			return false
		end
	end
end
