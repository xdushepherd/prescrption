class Prescri < ActiveRecord::Base
	has_many :drugs,through: :prescri_drug
	has_many :prescri_drugs,:dependent => :destroy,autosave: true
	attr_accessible :prescri_drugs_attributes,:patient_name,:gender,:info,:diagnose
	accepts_nested_attributes_for :prescri_drugs,:reject_if => lambda { |a| a[:drug_id].blank? }, allow_destroy: true
	def prescri_drugs_attributes=(attributes)
		attributes.each do |attribute|
		   attribute.shift
		   unless attribute[0]["drug_id"].blank?
             drug = Drug.find(attribute[0]["drug_id"])
             total_price = drug.price * attribute[0]["amount"].to_i
             prescri_drug =  attribute[0].merge(base_price: drug.price.to_s,
             	                                total_price: total_price.to_s,
             	                                drug_name: drug.name,
             	                                specifications: drug.specifications)
             if attribute[0]["id"].blank?
               if attribute[0]["_destroy"] == "false"
                 self.prescri_drugs.new(prescri_drug)
               end
             else
               if attribute[0]["_destroy"] == "false"
                  self.prescri_drugs.find(prescri_drug["id"]).update(prescri_drug)
               else
                  self.prescri_drugs.find(prescri_drug["id"]).destroy
               end
             end
		   end
		end
	end
end
