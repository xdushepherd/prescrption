class PrescriDrug < ActiveRecord::Base
	belongs_to :drugs
	belongs_to :prescris
end
