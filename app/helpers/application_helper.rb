module ApplicationHelper
  
  def is_company?
    current_user.present? && current_user.has_role?(:company)
  end
  
end
