

Embedding = {}


--- Returns the embedding numbers for a given text and the number of tokens used.
--- @param text string The text to get the embedding for.
--- @return table The embedding numbers.
--- @return number The number of tokens used.
function Embedding.get_embedding(text) end



--- Returns the euclidean distance between two embeddings.
--- @param embedding_numbers_a table The first embedding numbers.
--- @param embedding_numbers_b table The second embedding numbers.
--- @return number The euclidean distance between the two embeddings.

function Embedding.euclidean_distance(embedding_numbers_a, embedding_numbers_b) end




--- Saves the embedding numbers to the database.
--- @param tree_cache_id number The id of the tree cache.
--- @return Embedding.Embedding The embedding object.
function Embedding.get_embedding_from_cache(tree_cache_id) end



--- Returns the embedding-vector.
--- @returns Table<number>
function Embedding.Embedding:get_embedding_numbers()end
