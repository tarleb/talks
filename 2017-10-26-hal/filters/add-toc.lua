local headers = {}

function create_toc()
  local res = {}
  for i, v in ipairs(headers) do
    res[i] = {pandoc.Plain(v.content)}
  end
  return pandoc.OrderedList(res)
end

return {
  {
    Header = function (elem)
      if elem.level == 1 then
        headers[#headers + 1] = elem
      end
    end
  },
  {
    Para = function(elem)
      if #elem.content == 1 and elem.content[1].text == "{{toc}}" then
        return create_toc()
      end
    end
  }
}
