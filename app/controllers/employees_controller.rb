class EmployeesController < ApplicationController
  def register_employee; end

  def index
    @employees = Employee.all
  end

  def show
    set_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to '/employees'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_employee
  end

  def update
    set_employee
    if @employee.update(employee_params)
      redirect_to '/employees'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_employee
    @employee.destroy
    redirect_to employees_path, status: :see_other
  end

  private

  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_number, :private_number)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
