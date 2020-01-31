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
  
  def add_student(name, grade)
    break.pry
    if hash.key?(grade)
      hash[grade] << name
    else 
      hash[grade] = []
      hash[grade] << name
    end
  end  

  
end