class StudentsController < ApplicationController

    # return JSON data representing a list of all students
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        students = Student.order(grade: :desc).first
        render json: students
    end
end
