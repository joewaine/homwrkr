class AssignmentsController < ApplicationController
def index
end
def new
  @assignment = Assignment.new
end
def create
  assignment = Assignment.create(params[:assignment])
end
def show
    @assignment = Assignment.find(params[:id])
    @students = Student.all
    # size = @assignment.group_size
    # studentsize = @assignment.students.shuffle
    # @groupsize =  (studentsize / size)
    @studentlist = @students.pop(@assignment.group_size).join(', ')
end
end


