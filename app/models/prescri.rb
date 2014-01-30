class Prescri < ActiveRecord::Base
	has_many :drugs,through: :prescri_drug
	has_many :prescri_drugs,:dependent => :destroy,autosave: true
	attr_accessible :prescri_drugs_attributes
	accepts_nested_attributes_for :prescri_drugs, allow_destroy: true
end
