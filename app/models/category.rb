class Category < ActiveRecord::Base
	has_many :genres
	has_many :projects
end
