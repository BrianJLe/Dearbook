class Code < ActiveRecord::Base
	attr_accessible :cohort_id, :description, :invite_code
	belongs_to :user

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		else
			find(:all)
		end
	end
end
