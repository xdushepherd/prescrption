class Drug < ActiveRecord::Base
	has_many :prescris,through: :prescri_drug
	has_many :prescri_drugs
end
