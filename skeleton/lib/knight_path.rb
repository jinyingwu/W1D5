require_relative '00_tree_node'

class KnightPathFinder
  def initialize(pos)
    @move_tree = KnightPathFinder.build_move_tree
  end
  
  def self.root_node(pos)
    PolyTreeNode.new(pos)
  end 
  
  def self.valid_move(pos)
    moves_array = [[2,1],[1,2],[-1,2],[-2,1],[-2,-1],[-1,-2],[1,-2],[2,-1]]
    result = []
    moves_array.each do |move|
      x_pos = pos[0] + move[0] 
      if (0..7).include?(x_pos)        
        y_pos = pos[1] + move[1]
        if (0..7).include?(y_pos)
          result << [x_pos, y_pos]
        end 
      end   
    end 
    result
  end 
  
  
end 