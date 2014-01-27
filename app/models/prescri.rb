class Prescri < ActiveRecord::Base
	has_many :drugs,through: :prescri_drugs
  def drug1
  end

  def drug2
  end

  def drug3
  end

  def drug4
  end

  def drug5
  end
end
