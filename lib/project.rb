class Project 

    attr_accessor :title
  
    @@all = []
  
    def initialize(title)
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    # v.02: original working version:
    def add_backer_0(backer)
      new_project = ProjectBacker.new(self, backer)
    end
  
    # v.02: official solution version also works:
    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end
  
    def backers
      ProjectBacker.all.select{|et| et.project == self}
        .map(&:backer)
    end
  end