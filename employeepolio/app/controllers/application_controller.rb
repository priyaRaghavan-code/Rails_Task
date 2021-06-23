class ApplicationController < ActionController::Base
  add_flash_types :error, :success
  def after_sign_in_path_for(resource)
    new_employee_path
  end

  def after_sign_out_path_for(resource)
    employees_path
  end
  
end
