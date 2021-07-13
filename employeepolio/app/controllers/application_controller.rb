class ApplicationController < ActionController::Base
  include Pagy::Backend
  add_flash_types :error, :success

  def after_sign_in_path_for(resource)
    if Employee.where(user_id: current_user.id).length == 1
      stored_location_for(resource)
    else
      new_employee_path
    end
  end

  def after_sign_up_path_for(resource)
    new_user_session
  end

end
