module EmployeesHelper
  include Pagy::Frontend
    def get_submit_label(employee)
        logger.info employee
        if employee.name == nil
            "Create"
        else
            "Update"
        end
    end
end
