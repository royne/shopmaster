class HomeController < ApplicationController
  def index
    if current_user && current_user.has_role?(:company)
      @company = Company.find(current_user.company_id)
      redirect_to company_path(@company)
    end
  end
end
