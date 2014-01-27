class PrescriDrug < ActiveRecord::Base
	belongs_to :drug
	belongs_to :prescri
end
