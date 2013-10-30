module Dijkstra
  class Graph

    attr_accessor :nodes

    def initialize
      @nodes = []
    end

    def current_node
      @nodes.select { |n| n.current_node? }.first.name
    end

    def add_node(name)
      raise unless defined?(name)
      @nodes << Dijkstra::Node.new(name)
      @nodes.last.status = :current if @nodes.length == 1
    end

    def add_relationship(node_a, node_b, cost)
      raise 'Relationship already exists' if node_a.has_relationship_with(node_b)
      node_a.add_relationship node_b, cost
    end

  end
end