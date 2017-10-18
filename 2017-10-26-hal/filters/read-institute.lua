function Meta (meta)
  local inst_block = pandoc.read(meta.institute, "org").blocks[1]
  local inst = inst_block.content
  meta.institute = pandoc.MetaInlines(inst)
  return meta
end
