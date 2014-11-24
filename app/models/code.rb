class Code < ActiveRecord::Base
	attr_accessible :cohort_id, :description, :invite_code
	belongs_to :user

	def validate_code
		regcode_feed = Code.where("regcode = ?", invite_code)
		if regcode_feed.empty?
			errors.add(:invite_code, "DOESN'T WORK")
		end
	end

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
