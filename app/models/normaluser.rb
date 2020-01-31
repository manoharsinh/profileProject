require 'elasticsearch/model'

class Normaluser < ApplicationRecord
	has_secure_password
	validates :email, presence: true, uniqueness: true
	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    

end
Normaluser.import