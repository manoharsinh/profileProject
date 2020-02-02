require 'elasticsearch/model'

class Normaluser < ApplicationRecord
	has_secure_password
	validates :email, presence: true, uniqueness: true
	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
	validate :pid_check
	private
	def pid_check
		puts "oh yes!"
		bool=false
		if(pid != nil)
			ppid = Normaluser.find(pid).pid
			if(ppid != nil)
				pppid = Normaluser.find(ppid).pid
				if(pppid != nil)
					bool = true
				end

			end
		end
		
		cnt=Normaluser.where("pid= ? ",pid).count
		puts "count is this #{cnt}"
		if (cnt==4) || (bool)
			errors.add(:pid,'pid exceeded validations')
		else
			puts "no error"
		end 
	end
	


end
Normaluser.import