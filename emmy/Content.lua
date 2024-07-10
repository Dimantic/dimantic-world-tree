

--- "Emmy-lua" type hints for https://github.com/EmmyLua.

--- Content Module: Contains all content types and functions.
--- No manual require is needed, its already included.
local Content = {}


--- @class Content.Paragraph A piece of content, f.e. text, image, link, etc. Associated with a node.
--- @field id number The id of the paragraph
--- @field tree_id number The id of the tree the paragraph is associated with
--- @field node_id number The id of the node the paragraph is associated with
--- @field content string The content of the paragraph
--- @field content_type number The type of the content
--- @field order_id number In this order the content is rendered for the node.

Content.Paragraph = {}
Content.Paragraph.__index = Content.Paragraph



--- @class Content.content_types Basically a enum for the content types.
--- @field paragraph number 0
--- @field link number 1
--- @field image_link number 2
--- @field yt_link number 3
--- @field header number 4
Content.content_types = {
  paragraph = 0,
  link = 1,
  image_link = 2,
  yt_link = 3,
  header = 4,
}


--- Creates a new Content.Paragraph object.
--- @param node_id number The id of the node the paragraph is associated with
--- @param content string The content of the paragraph
--- @param content_type number The type of the content
--- @return Content.Paragraph
function Content.Paragraph.new(node_id, content, content_type) end



--- Saves the paragraph to the database.
--- @return Content.Paragraph
function Content.Paragraph:save() end




--- Creates a html element from the given paragraph.
--- @return Html.Paragraph
function Content.Paragraph:to_html_element() end




--- Gets all content paragraphs from a node.
--- @param node_id number The id of the node
--- @return Content.Paragraph[]
function Content.Paragraph.get_all_from_node(node_id) end




--- Gets a content paragraph by its id.
--- @param id number The id of the paragraph
--- @return Content.Paragraph
function Content.Paragraph.get_by_id(id) end




--- Deletes the paragraph from the database.
--- @return boolean
function Content.Paragraph:delete() end

