class StudentsController < ApplicationController 
    
    def new
        @student = Student.new 
    end 
    
    def create
        @student = Student.new(params_for(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end 
    
    def show 
        @student = Student.find(params[:id])
    end 
    
    def edit
        @student = Student.find(params[:id])
    end 
    
    def update 
        @student = Student.find(params[:id])
        @student.update(params_for(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end 

    def index
    end 

    private 

    def params_for(*args)
        params.require(:student).permit(*args)
    end 


end 