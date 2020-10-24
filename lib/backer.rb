class Backer
  attr_reader :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    if !project.backed_projects.include?(project)
      project.add_backer(self)
    end
  end
  
  def backed_projects
    @backed_projects
  end
end