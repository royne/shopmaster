class Product < ApplicationRecord
  belongs_to :company
  has_many :categories

  acts_as_tenant(:company)
end
