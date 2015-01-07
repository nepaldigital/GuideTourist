# require 'elasticsearch/model'

class Master < ActiveRecord::Base

validates_presence_of :name, :description
validates_uniqueness_of :name
	
	has_many :secondaries

	scope :master_name_search, -> (query) { where("name like ?", "%#{query}%" ) }
	scope :master_des_search, -> (query) { where("description like ?", "%#{query}%") }
end
