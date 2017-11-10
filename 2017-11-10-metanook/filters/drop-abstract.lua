local looking_at_abstract = false
local abstract = {}

function Block (elem)
  if looking_at_abstract then
    abstract[#abstract + 1] = elem
    return {}
  end
end

function Header (elem)
  local first = elem.content[1]
  if first and first.text == "Abstract" then
    looking_at_abstract = true
    return {}
  else
    looking_at_abstract = false
  end
end

function Meta (meta)
  meta.abstract = meta.abstract or pandoc.MetaBlocks(abstract)
  return meta
end
