module OrganizationScopable
  extend ActiveSupport::Concern

  class_methods do
    # For models with direct organization_id column
    def scoped_to_organization(org)
      where(organization_id: org.id)
    end

    # For models that belong_to another model with organization_id
    def scoped_through_association(association, org)
      joins(association).where("#{association.to_s.pluralize}.organization_id": org.id)
    end
  end
end