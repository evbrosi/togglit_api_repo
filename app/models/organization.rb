class Organization < ApplicationRecord
  has_many :locations
  has_many :employees
end
