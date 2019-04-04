require "pry"
require_relative "./backer.rb"

class Project
    @@projects = []

    attr_reader :title, :backers

    def initialize(title)
        @@projects << self
        @backers = []
        @title = title
    end

    def backer
        @backers
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
        # binding.pry
    end
end