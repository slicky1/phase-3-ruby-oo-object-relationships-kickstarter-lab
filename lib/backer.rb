class Backer 

    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    # v.02: original working version:
    def back_project_0(project)
      new_project = ProjectBacker.new(project, self)
    end
  
    # v.02: official solution version also works:
    def back_project(project)
      ProjectBacker.new(project, self)
    end
  
    def backed_projects
      ProjectBacker.all.select{|et| et.backer == self}
        .map(&:project)
    end
  end