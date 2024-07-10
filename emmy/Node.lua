

Node = {}



--- Returns the root node of the tree.
--- @return table The root node.
function Node.get_root_node() end




--- @class Node.Node
--- @field id number The id of the node.
--- @field parent_id number The id of the parent node.
--- @field content string The content of the node.
--- @field author_id number The id of the author of the node.
--- @field tree_id number The id of the tree the node is associated with.
--- @field node_type number The type of the node.




--- Creates a new Node instance.
--- @param parent_node_id number The id of the parent node.
--- @param content string The content of the node.
--- @param author_id number The id of the author of the node.
--- @param node_type number The type of the node.
--- @return Node.Node The new node.
function Node.Node.create_new_node(parent_node_id, content, author_id, node_type) end




--- Renders the tree of nodes.
--- @param nodes table The nodes to render.
--- @param types_on_icons table The mapping of node types to icons.
--- @return nil
function Node.render_tree(nodes, types_on_icons) end




--- Returns all nodes of the current tree.
--- @return table The nodes of the tree.
function Node.get_nodes_of_tree() end



--- Returns a node by the given id.
--- @param node_id number The id of the node.
--- @param allow_nil boolean Whether to allow nil as a return value.
--- @return Node.Node The node.
function Node.get_node_by_id(node_id, allow_nil) end




--- Moves the node to a new parent.
--- @param new_parent_node_id number The id of the new parent node.
--- @param as_last boolean Whether to move the node as the last child.
--- @return nil
function Node.Node:move_to_new_parent(new_parent_node_id, as_last) end




--- Deletes the node from the database.
--- @return nil
function Node.Node:delete() end




--- Returns the direct children of the node.
--- @return table The direct children.




--- Saves the node to the database.
--- @return Node.Node The node.
function Node.Node:save() end

