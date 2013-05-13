class Game < ActiveRecord::Base
	has_many :tickers
	has_one :teams

	#validates :teamHeim, presence: true

	before_destroy :ensure_not_referenced_by_any_ticker
	# ensure that there are no ticker referencing this game
	def ensure_not_referenced_by_any_ticker
		if tickers.count.zero?
			return true
		else
			errors.add(:base, 'SPRACHE: Kann nicht gelöscht werden: Ticker vorhanden' )
			return false
		end
	end
end
