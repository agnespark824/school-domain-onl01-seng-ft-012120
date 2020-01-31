require 'pry'

class School
#  attr_accessor :grade
#  attr_writer 
  attr_reader :name
 
  def initialize(name)
    name=(name)
    @roster = {}
  end
  
  def roster=(roster)
  #return hash with keys of grade levels
    @roster = roster
  end
  
  def roster
    @roster
  end

  roster = {}
  
  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else 
      roster[grade] = []
      roster[grade] << name
    end
  end  
  
  def grade(number)
    roster[number]
  end
  
  def sort
    roster.update(roster) do |grade, array|
      array.sort
    end
  end   
end