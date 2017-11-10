function Span (elem)
  local firstClass = elem.classes[1]
  if firstClass and firstClass:sub(1, 6) == "latex-" then
    local cmd_begin = pandoc.RawInline('latex', '\\' .. firstClass:sub(7) .. '{')
    local cmd_end = pandoc.RawInline('latex', '}')
    local res = {cmd_begin}
    for i, v in ipairs(elem.content) do
      res[i + 1] = v
    end
    res[#res + 1] = cmd_end
    return res
  end
end
