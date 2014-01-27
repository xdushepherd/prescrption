class Prescri < ActiveRecord::Base
	attr_accessor :amount1 ,:amount2,:amount3,:amount4,:amount5
	has_many :drugs,through: :prescri_drug
	has_many :prescri_drugs
end
