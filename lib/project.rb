class Project 
  
  attr_accessor :backer
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def backers 
    @backers
  end 
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.back_project.include(self)
  end 
  
end 