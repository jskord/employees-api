class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birth_date: params[:birth_date],
      email: params[:email],
      ssn: params[:ssn]
    )
    @employee.save
    # redirect_to "/employees/#{@employee.id}"
    render 'show.json.jbuilder'
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  
  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:firstName] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.birth_date = params[:birth_date] || @employee.birthdate
    @employee.email = params[:email] || @employee.email
    @employee.ssn = params[:ssn] || @employee.ssn
    @employee.save
    render 'show.json.jbuilder'
  end


  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render json: { my_message: "Employee successfully destroyed!" }
  end



end
