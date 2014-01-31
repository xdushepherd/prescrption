class Prescri < ActiveRecord::Base
	has_many :drugs,through: :prescri_drug
	has_many :prescri_drugs,:dependent => :destroy,autosave: true
	attr_accessible :prescri_drugs_attributes
	accepts_nested_attributes_for :prescri_drugs,:reject_if => lambda { |a| a[:drug_id].blank? }, allow_destroy: true

	def prescri_drugs_attributes=(attributes)
		attributes.each do |attribute|
		   attribute.shift
		   unless attribute[0]["drug_id"].blank?
             drug = Drug.find(attribute[0]["drug_id"])
             total_price = drug.price * attribute[0]["amount"].to_i
             prescri_drug =  attribute[0].merge(base_price: drug.price.to_s,total_price: total_price.to_s,drug_name: drug.name)
             self.prescri_drugs.new(prescri_drug)
		   end
		end
	end
end
