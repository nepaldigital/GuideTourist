class Legaldescription < ActiveRecord::Base
	validates :ldesc_createdby, presence: true
	validates :ldesc_modifiedby, presence: true
	belongs_to :legalmaster
	belongs_to :legalcountry

end
