class Prescri < ActiveRecord::Base
	has_many :drugs,through: :prescri_drug
	has_many :prescri_drugs
	accepts_nested_attributes_for :prescri_drugs,:reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
