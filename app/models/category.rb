class Category < ApplicationRecord
  belongs_to :company
  has_many :products
  
  acts_as_tenant(:company)

  before_create :name_downcase

  def name_downcase
    self.name = name.downcase
  end
  
end
