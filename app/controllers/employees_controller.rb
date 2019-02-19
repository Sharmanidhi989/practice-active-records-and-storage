class EmployeesController < ApplicationController
  
  def new
    @employee = Employee.new
  end

  def create
    @employee  = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @employee = Employee.find_by_id(params[:id])
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :manager_id)
  end

end
