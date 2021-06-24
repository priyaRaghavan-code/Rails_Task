class PriorExperiencesController < ApplicationController
  before_action :get_employee
  before_action :set_experience, only: [:show, :edit, :update, :destroy]


  def index
    @experiences = @employee.experiences
  end

  def show
  end

  def new
    @experience = @employee.xperiences.build
  end


  def edit
      @experience = @employee.experiences.find(params[:id])
      respond_to do |format|
          format.js
          format.html { redirect_to 'edit', notice: "Employee was created successfully ." }
      end
  end

  def create
    @experience = @employee.experiences.build(experience_params)
        respond_to do |format|
          if @experience.save
              format.js
              format.html { redirect_to @employee, notice: "Employee was created successfully." }
              format.json { render :show, status: :created, location: @experience }
          else
              format.html { render :new }
              format.json { render json: @employee.errors, status: :unprocessable_entity }
              format.js
          end
        end
  end

  def update
  
    respond_to do |format|
      if @experience.update(experience_params)
        format.js {render :action => "create"}
        format.html { redirect_to employee_experience_path(@employee), notice: 'Experience was updated successfully .' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @experience.destroy
    respond_to do |format|
      format.js {render :action => "create"}
      format.html { redirect_to employee_experiences_path(@employee), notice: 'Prior Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_employee
    @employee = Employee.find(params[:employee_id])
  end

  def set_experience
    @experience = @employee.experiences.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:company_name,:start_date,:end_date,:location,:employeement_type,:role)
  end
end
