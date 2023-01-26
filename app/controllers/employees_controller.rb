class EmployeesController < ApplicationController

  def register_employee
  end

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to "/employees"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def employee_params
      params.require(:employee).permit(:email, :name, :position, :employee_number, :private_number)
    end
  end
