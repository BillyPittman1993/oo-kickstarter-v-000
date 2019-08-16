class Backer 
  
  attr_accessor :project
  attr_reader :name
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end
  
  def backed_projects
    @backed_projects
  end
  
  def back_project(project)
    @backed_projects << project 
    project.add_backer(self)
  end 
end