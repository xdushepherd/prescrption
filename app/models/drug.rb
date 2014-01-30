class Drug < ActiveRecord::Base
	has_many :prescris,through: :prescri_drug
	has_many :prescri_drugs
	validates :name, uniqueness: {message: '这个药品已经录入，如果要修改信息，请直接去药品目录下修改!'}
	validates :price,presence: { message: "药品必须有价格"}
end
