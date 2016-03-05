class UserName < ActiveRecord::Base
	belongs_to :patients
	validates :name, presence: true, uniqueness: true

	has_secure_password
end
