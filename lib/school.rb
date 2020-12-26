# code here!
require 'pry'

class School
  attr_reader :roster

  def initialize(school_name)

    @school_name = school_name
    @roster = {}

  end

  def add_student(name, grade)

    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name

  end

  def grade(grade_num)

    @roster[grade_num]

  end

  def sort

    @roster.map do |grade, student_arr|
      @roster[grade] = student_arr.sort
    end

    @roster.to_h
  end

end