class Company < ApplicationRecord 
  validates_uniqueness_of :email
end
