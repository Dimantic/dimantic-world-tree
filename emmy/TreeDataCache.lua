

  --- The TreeDataCache module.
  --- @module TreeDataCache
  TreeDataCache = {}


TreeDataCache.CachedTreeNode = {}


TreeDataCache.CachedTreeMembership = {}



TreeDataCache.TreeDataCache = {}




  --- Get a random batch of cached tree data; Only applies to cached trees, some new trees might not yet be cached.
  --- @param amount number The amount of cached tree data to get.
  --- @return Table<TreeDataCache.TreeDataCache> | Problem The random batch of tree data or a problem object.
  function TreeDataCache.get_random_batch(amount) end




  --- Get cached tree data by a list of ids.
  --- @param id_list Table<number> The list of ids to get the cached tree data for.
  --- @return Table<TreeDataCache.TreeDataCache> | Problem The cached tree data or a problem object.
  function TreeDataCache.get_cache_entries_by_id_list(id_list) end




  --- Get a cached tree data entry by its id.
  --- @param id number The id of the cached tree data entry.
  --- @return TreeDataCache.TreeDataCache | nil The cached tree data entry or nil.
  function TreeDataCache.get_cache_entry_by_id(id) end




  --- Get matching cache entries by matching the text against the embeddings of the cache entries.
  --- @param list_of_weighted_score_names table<table<number|string>> table<{ score_name = string, weight = number }> The list of score names and their weights.
  --- @param weight_of_embedding_match number The weight of the embedding match.
  --- @param number_of_results number The number of results to return.
  --- @param text_to_match_against string The text to match against.
  function TreeDataCache.get_matching_cache_entries_by_embedding(
    list_of_weighted_score_names, -- { { score_name = string, weight = float (between -1 - 1) }, ... },
    weight_of_embedding_match, -- float (between 0 - 1) -> how much the embedding should be weighted
    number_of_results, -- int: how many results should be returned
    text_to_match_against -- string: the text to use for the matching
  )end



  --- Get all cached tree data entries.
  --- @return table<TreeDataCache.TreeDataCache> | Problem The cached tree data entries or a problem object.
  function TreeDataCache.get_all_cache_entries() end


  --- Get the cached nodes of the tree.
  --- @return table<TreeDataCache.CachedTreeNode> The cached nodes of the tree.
  function TreeDataCache.TreeDataCache:get_cached_nodes() end



  --- Get the cached members of the tree.
  --- @return table<TreeDataCache.CachedTreeMembership> The cached members of the tree.
  function TreeDataCache.TreeDataCache:get_cached_members() end




  --- Get the owner-id of the tree.
  --- @return number The owner-id of the tree.
  function TreeDataCache.TreeDataCache:get_owner_id() end







