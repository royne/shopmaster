class Product < ApplicationRecord
  belongs_to :company
  has_many :categories

  has_attached_file :image, styles: { medium: "800x400", thumb: "300x200" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  acts_as_tenant(:company)

  before_create :name_capitalize

  def name_capitalize
    self.name = name.capitalize
  end
  
end
