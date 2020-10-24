class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(backer)
      backer.back_project(self)
    end
  end
  
  def self.backers
    @backers
  end
end