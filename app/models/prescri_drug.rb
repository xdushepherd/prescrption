class PrescriDrug < ActiveRecord::Base
	belongs_to :drug
	belongs_to :prescri
	attr_accessible :id,:drug_name,:drug_id,:base_price,:total_price,:amount,:use_method,:specifications
end
