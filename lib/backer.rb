class Backer
  attr_reader :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    if !project.backed_projects
    project.add_backer(self)
  end
  
  def backed_projects
    @backed_projects
  end
end