require "pry"
require_relative "./project.rb"

class Backer
    attr_reader :name, :backed_projects
    @@backers = []
    def initialize(name) 
        @@backers << self
        @backed_projects = []
        @name = name
    end
    
    def back_project(project)
        @backed_projects << project
        project.backers  << self
        # @backers << self
        # binding.pry
    end 
    
    def backed_projects
        @backed_projects
    end 


end