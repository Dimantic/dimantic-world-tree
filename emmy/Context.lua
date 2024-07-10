

--- @class Context
--- Context Module: Contains all functions needed to handle the context of the current request.
Context = {}

--- @field request table The request object, containing the post data, the tree_id and the user_id.
Context.request = {}

--- @field request.user_id number The id of the current user.
Context.request.user_id = 0

--- @field request.tree_id number The id of the current tree.
Context.request.tree_id = 0

