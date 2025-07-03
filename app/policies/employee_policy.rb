class EmployeePolicy < ApplicationPolicy
  # 🔹 Controller actions

  

  # 🔹 Scope class for index queries
  class Scope < ApplicationPolicy::Scope
    def resolve
      # Only allow employees for the user's organization
      scope.joins(:restaurant).where(restaurants: { organization_id: user.organization_id })
    end
  end
end
