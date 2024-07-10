-- World Tree; render_tree() handler
-- This handler is called by the platform and placed on the left 
-- side of the page.


local linfo = function(msg, data)Logging.info(msg, data or {}) end
local tree_id = Context.request.tree_id; linfo("Tree-id: "..tree_id, nil)
local root_node = Node.get_root_node() 

root_node.content = "Dimantic"
root_node.node_type = "4"

local other_nodes = Node.get_nodes_of_tree(); linfo("Nodes- loaded: ".. #other_nodes, nil)

local all_nodes = {root_node}
for _, node in ipairs(other_nodes) do 
  linfo("Got node: ", node)
  table.insert(all_nodes, node)
end

-- map all node types on font awesome 5! icons
-- https://fontawesome.com/v5/search
local types_on_icons = {
  ["0"] = "fas fa-align-justify",
  ["1"] = "fas fa-search",
  ["3"] = "fas fa-play",
  ["4"] = "fas fa-globe-europe"
}

Node.render_tree(all_nodes, types_on_icons)

-- display all logs beneath the tree
Logging.put_on_screen_as_html(
  Logging.get_all()
)

 