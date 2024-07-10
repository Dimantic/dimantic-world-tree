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
--for _, node in ipairs(other_nodes) do 
--  linfo("Got node: ", node)
--  table.insert(all_nodes, node)
--end

-- for the start a list of all exisign trees with links to click on
-- we need to use tree data cahce for this: get random ones

local amount = 100
local random_trees = TreeDataCache.get_random_batch(amount)
linfo("Tree batches loaded: " .. #random_trees, nil)

local trees_overview_node
do
  local parent_node_id = 0 -- i am a child of the root node
  local content = "Trees"
  local author_id = -1
  local node_type = 3
  trees_overview_node = Node.Node.create_new_node(parent_node_id, content, author_id, node_type) 
end
trees_overview_node.id = 1


local nodes = {}
for _, random_tree in ipairs(random_trees) do 
  
  local new_parent_node_id = 0-- child of root node
  local node
  do
    local parent_node_id = 1 -- i am a child of the root node
    local content = "Tree with id " ..  random_tree.id
    local author_id = -1
    local node_type = 3
    node = Node.Node.create_new_node(parent_node_id, content, author_id, node_type) 
  end

  table.insert(nodes, node)

end   


-- todo: needed Nodes-
-- - github-pages with default trees
-- - search members
-- - search trees

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

 