class Employee < ApplicationRecord
  include OrganizationScopable

  belongs_to :restaurant
end
