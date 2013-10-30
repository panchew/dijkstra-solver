require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Dijkstra::Graph do

  describe '#current_node' do

    let(:node1) { mock('Node', :name => 'node1', :status => :current, :current_node? => true) }
    let(:node2) { mock('Node', :name => 'node2', :status => :unvisited, :current_node? => false) }
    let(:node3) { mock('Node', :name => 'node3', :status => :unvisited, :current_node? => false) }

    before do
      @graph = Dijkstra::Graph.new
      @graph.nodes = [node1, node2, node3]
    end

    it 'returns the name of the current node' do
      @graph.current_node.should == 'node1'
    end

  end

end