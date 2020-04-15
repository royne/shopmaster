class Product < ApplicationRecord
  belongs_to :company
  has_many :categories

  acts_as_tenant(:company)

  before_create :name_capitalize

  def name_capitalize
    self.name = name.capitalize
  end
  
end
