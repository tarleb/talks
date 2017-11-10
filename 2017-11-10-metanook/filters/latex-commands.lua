local latex_macros = {
  LaTeX = "\\LaTeX{}",
}

for k, v in pairs(latex_macros) do
  latex_macros[k] = pandoc.RawInline('latex', v)
end

function Str (elem)
  for k, v in pairs(latex_macros) do
    if elem.text:find(k) == 1 then
      elem.text = elem.text:sub(k:len() + 1)
      return {v, elem}
    end
  end
end
