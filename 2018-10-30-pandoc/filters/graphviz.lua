function CodeBlock (elem)
  if elem.classes[1] == "dot" and
     elem.classes[2] == "process" then
    local img = pandoc.pipe("dot", {"-Tpdf"}, elem.text)
    local filename = pandoc.sha1(img) .. ".pdf"
    local image_title = {pandoc.Str "dot graph"}
    local attr = {"", {}, {{"width", "100%"}}}
    pandoc.mediabag.insert(filename, "application/pdf", img)
    return pandoc.Para {pandoc.Image(image_title, filename, "", attr)}
  end
end
