function Image (img)
  img.src = "../" .. img.src
  return img
end


function CodeBlock (elem)
  if elem.classes[1] == 'include' then
    elem.text = io.open(elem.text:gsub('\n', ''), 'r')
    return elem
  end
end
