class ExperiencesController < ApplicationController
  before_action :get_employee
  before_action :set_experience, only: [:show, :edit, :update, :destroy]


  def index
    @experiences = @employee.experiences
  end

  def show
  end

  def new
    @experience = @employee.experiences.build
  end


  def edit
      @experience = @employee.experiences.find(params[:id])
      respond_to do |format|
          format.json { render json: { html: render_to_string(partial: 'edit_experience_modal.html.erb', locals: {experience: @experience}) } }
      end
  end

  
  def create
    @experience = @employee.experiences.build(experience_params)
        respond_to do |format|
          if @experience.save

              format.js
              format.html { redirect_to @employee, notice: "Employee was created successfully." }
              # format.json { render :show, status: :created, location: @experience }
              format.json { render json: { html: render_to_string(partial: 'list_experience.html.erb')} }
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
        format.html { redirect_to employee_experience_path(@employee), notice: 'Experience was updated successfully .' }
        format.json { render json: { html: render_to_string(partial: 'list_experience.html.erb') } }
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
      format.json { render json: { html: render_to_string(partial: 'list_experience.html.erb') } }
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
    params.require(:experience).permit(:company_name,:start_date,:end_date,:location,:employement_type,:role)
  end
end
