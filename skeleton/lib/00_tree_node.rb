class PolyTreeNode
   
  def initialize(value)
    @value = value
    @parent = nil 
    @children = []
  end
  
  attr_reader :value, :parent
  attr_accessor :children
  
  def parent=(my_parent)
    @parent.children.delete(self) unless @parent.nil?
    @parent = my_parent
    
    unless @parent.nil?
      my_parent.children << self unless my_parent.children.include?(self)
    end 
  end 
  
  def add_child
  end 
  
end