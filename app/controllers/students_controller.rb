class StudentsController < ApplicationController
  def index
    @students = Students.all
    respond_to do |format|
      format.json {render :json => @students}
    end
  end
  def newStudent
  end
  def createStudent
    fn = params[:first_name]
    ln = params[:last_name]
    maj = params[:major]
    @students = Students.new(:first_name => fn, :last_name => ln, :major => maj)
    @students.save
  end
  def selectStudent
     @students = Students.all
  end
  def deleteStudent
    id = params[:student_id]
    @students = Students.find_by_id(id)
    if @students.delete
      redirect_to :controller => "students", :action => "selectStudent"
    end
  end
  def editStudent
  id = params[:student_id]
  @student = Students.find_by_id(id)
  end
  def updateStudent
    id = params[:id]
    fn = params[:first_name]
    ln = params[:last_name]
    maj = params[:major]
    Students.update(id, {:first_name => fn, :last_name => ln, :major => maj})
    redirect_to :controoller => "students", :action => "selectStudent"
  end
end
