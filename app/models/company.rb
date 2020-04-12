class Company < ApplicationRecord
  acts_as_tenant(:company)
end
