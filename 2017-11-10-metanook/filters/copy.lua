-- local blocks = {}
-- local level

-- function copy_class_index(elem)
--   for i, v in ipairs(elem.classes) do
--     if v == "copy" then
--       return i
--     end
--   end
--   return nil
-- end

-- function Header (elem)
--   if level ~= nil then
--     if elem.level <= level then
--       level = nil
--       table.insert(blocks, elem)
--       return blocks
--     else
--       blocks[#blocks + 1] = elem
--     end
--   end
--   local cls_idx = copy_class_index(elem)
--   if cls_idx then
--     blocks = {}
--     blocks[1] = elem
--     level = elem.level
--     return elem
--   end
-- end

-- function Block (elem)
--   if level ~= nil then
--     if elem.classes then
--       table.insert(elem.classes, "copied")
--     end
--     blocks[#blocks + 1] = elem
--   else
--     return nil
--   end
-- end

local blocks_by_id = {}

function Block (elem)
  if elem.identifier then
    blocks_by_id[elem.identifier] = elem
  end
end

function Div (elem)
  -- for k, v in pairs(elem.attributes) do
  --   print(k, v)
  --   for k1, v1 in pairs(v) do
  --     print(k1, v1)
  --   end
  -- end
  local copy_id
  for i, v in pairs(elem.attributes) do
    if v[1] == "copy" then
      table.remove(elem.attributes, i)
      copy_id = v[2]
    end
  end
  if copy_id and blocks_by_id[copy_id] then
    local copied_elem = blocks_by_id[copy_id]
    copied_elem.identifier = elem.identifier
    copied_elem.classes = elem.classes
    copied_elem.attributes = elem.attributes
    return copied_elem
  end
end

return {
  { Block = Block },
  { Div = Div }
}
