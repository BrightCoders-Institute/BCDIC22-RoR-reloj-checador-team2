class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
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
  end

  def update
    if @employee.update(employee_params)
      redirect_to '/employees'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path, status: :see_other
  end

  def change
    @employee = Employee.find(params[:id])
    @employee.update(status: params[:status])
    redirect_to ...
  end

  private

  def employee_params
    params.require(:employee).permit(:email, :name, :position, :employee_number, :private_number, :id_store)
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
