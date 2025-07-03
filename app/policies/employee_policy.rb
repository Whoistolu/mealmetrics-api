class EmployeePolicy < ApplicationPolicy
  # 🔹 Controller actions

  def index?
    user.admin? || user.manager?
  end

  def show?
    user.admin? || user.manager?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  # 🔹 Scope class for index queries
  class Scope < ApplicationPolicy::Scope
    def resolve
      # Only allow employees for the user's organization
      scope.joins(:restaurant).where(restaurants: { organization_id: user.organization_id })
    end
  end
end
