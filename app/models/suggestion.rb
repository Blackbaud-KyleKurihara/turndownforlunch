class Suggestion < ActiveRecord::Base

	def createSuggestion
		save
	end

	def vote_up
		logger.info "Suggestion #{:location}: #{:depature_time} has been up voted!"
		self.votes += 1
		save
	end
end
