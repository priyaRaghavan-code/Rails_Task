class EducationsController < ApplicationController
  before_action :get_employee
  before_action :set_education, only: [:show, :edit, :update, :destroy]


  def index
    @educations = @employee.educations
  end

 
  def show
  end

  
  def new
    @education = @employee.educations.build
  end

  
  def edit
    @education = @employee.educations.find(params[:id])
    respond_to do |format|
      format.json { render json: { html: render_to_string(partial: 'edit_education_modal.html.erb')} }
    end
  end


  def create
    @education = @employee.educations.build(education_params)
        respond_to do |format|
        if @education.save
            format.js
            format.html { redirect_to @employee, notice: "Employee was successfully created." }
            format.json { render :show, status: :created, location: @education }
        else
            format.html { render :new }
            format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @education.update(education_params)
        format.js 
        format.html { redirect_to employee_education_path(@employee), notice: 'Experience was successfully updated.' }
        format.json { render json: { html: render_to_string(partial: 'list_education.html.erb') } }
        # format.json { render json: { html: render_to_string(partial: 'edit_education_modal.html.erb')} }

      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @education.destroy
    respond_to do |format|
      format.js {render :action => "create"}
      format.html { redirect_to employee_educations_path(@employee), notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def get_employee
    @employee = Employee.find(params[:employee_id])
  end
    
  def set_education
    @education = @employee.educations.find(params[:id])
  end

  def education_params
    params.require(:education).permit(:institution_name,:start_date,:end_date,:grade)
  end
end

