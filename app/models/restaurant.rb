class Restaurant < ApplicationRecord
  include OrganizationScopable

  belongs_to :organization
end
