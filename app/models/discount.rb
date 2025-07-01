class Discount < ApplicationRecord
  include OrganizationScopable

  belongs_to :restaurant
end
