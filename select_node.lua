local post = Context.request.post
Logging.info("Post-Data: ", post)

local missing_node_id = Context.request.post.node_id == nil
if missing_node_id then 
  Problem.panic(
    "Post field node_id is nil",
    "Missing post field 'node_id'",
    Context.request.post
  )
end  

local is_root_node = post.node_id == "0"
if is_root_node then 
  -- This code is executed if a node is selected
  -- If you click on the dimantic root node, you get the root content

  local root_node_id = tonumber(post.node_id)  
  
  do -- create header, convert it to html_object and then render it to output
    local node_id = root_node_id
    local content = "Dimantic Root Page"
    local content_type = Content.content_types.header 
    local header = Content.Paragraph.new(node_id, content, content_type)
    local html_object = header:to_html_element()
    Html.render(html_object)
  end

  -- todo: write here what dimantic is about ...


  print("ROOT NODE OF TREE")
  return
end 




