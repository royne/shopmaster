class ApplicationController < ActionController::Base
  set_current_tenant_through_filter
  before_action :set_tenant

  def set_tenant
    if current_user
      if current_user.has_role?(:company)      
        @current_tenant = Company.find(current_user.company_id)
        @company = @current_tenant
        set_current_tenant(@current_tenant)
      end      
    end
  end

end