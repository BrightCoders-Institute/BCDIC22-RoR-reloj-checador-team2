class EmployeeController < ApplicationController

    def register_employee
    end

    def index
       @employees = Employee.all
    end

  end
