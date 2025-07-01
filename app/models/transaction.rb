class Transaction < ApplicationRecord
  include OrganizationScopable
  belongs_to :restaurant
end
