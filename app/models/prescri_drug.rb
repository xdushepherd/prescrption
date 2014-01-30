class PrescriDrug < ActiveRecord::Base
	belongs_to :drug
	belongs_to :prescri
	attr_accessible :drug_name,:base_price,:total_price,:amount,:use_method
end
