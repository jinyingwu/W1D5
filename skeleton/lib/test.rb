require_relative '00_tree_node'

one = PolyTreeNode.new(1)
two = PolyTreeNode.new(2)
three = PolyTreeNode.new(3)

two.parent = one
three.parent = one
puts one

puts one.dfs(2)
puts one.dfs(3)
puts one
