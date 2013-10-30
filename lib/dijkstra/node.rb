module Dijsktra
  class Node

    attr_accessor :status

    def initialize(name)
      raise unless defined?(name)
      @name = name
      @neighbors = []
      @links = {}
      @status = :unvisited
      @distance_value = :infinity
    end

    def current_node?
      @status == :current?
    end

    def has_relationship_with(node)
      @neighbors.include? node
    end

    def add_relationship(node, cost)
      @neighbors << node
      @links[node] = cost
    end


  end
end