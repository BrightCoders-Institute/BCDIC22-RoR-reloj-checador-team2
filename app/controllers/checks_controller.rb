class ChecksController < ApplicationController
  def index; end

  def create
    @employee = Employee.find_by(employee_params)
    if @employee.nil?
      flash[:alert] = 'Wrong number or password'
    else
      @check = Check.new(check_params.merge(timestamp: Time.now.strftime('%H:%M - %F'),
                                            id_employee: @employee.id))
      @check.save ? flash[:notice] = 'Successfully check' : flash[:alert] = 'Checking faill'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def employee_params
    params.permit(:employee_number, :private_number)
  end

  def check_params
    params.permit(:check)
  end
end
