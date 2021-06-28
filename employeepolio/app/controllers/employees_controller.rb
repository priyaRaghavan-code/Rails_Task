class EmployeesController < ApplicationController
  before_action :authenticate_user!


  def index
    @employees = Employee.paginate(:page => params[:page], :per_page => 5)
  end

  def show 
    employee
  end

  def new 
    @employee = Employee.new
    @employee.experiences.build
    @employee.educations.build
  end

  def create
    @employee = Employee.new(allowed_params)
    # if @employee.save
    #   flash.now[:success] = "Saved the Employee Details"
    #   redirect_to employees_path
    # else
    #   flash.now[:error] = "Unable to add the employee"
    #   render 'new'
    # end
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: "Employee was successfully created." }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit 
    employee
  end

  def update 
    if employee.update(allowed_params)
      flash.now[:success] = "Saved the Employee Details"
      redirect_to employees_path
    else
      flash.now[:error] = "Unable to add the employee"
      render 'new'
    end
  end

  def destroy
    employee.destroy
    redirect_to employees_path
  end

  private 
    def allowed_params
      params.require(:employee).permit(
      :name, 
      :age, 
      :mobile, 
      :gender, 
      :email, 
      :skills, 
      :address,
      :empid,
      :image,
      :banner,
      :about,
      experiences_attributes: [:id,:employee_id,:start_date,:end_date,:company_name,:role,:location,:employement_type],
      educations_attributes: [:id,:employee_id,:start_date,:end_date,:institution_name,:grade])
    end

    def employee
      @employee ||= Employee.find(params[:id])
    end

end
