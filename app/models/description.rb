class Description < ActiveRecord::Base
	validates :description, presence: true
	has_many :images
	belongs_to :secondary
	# scope :description_name_search, -> (query) { where("name like ?", "%#{query}%" ) }
end
