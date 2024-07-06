local appendKeys = function(t1, t2)
  for k, _ in pairs(t2) do
    table.insert(t1, k)
  end
  return t1
end

local appendValues = function(t1, t2)
  for _, v in pairs(t2) do
    table.insert(t1, v)
  end
  return t1
end

local lsp = require("configs.list_lsp")
local fmt = require("configs.list_fmt")
local tools = {}
tools = appendKeys(tools, lsp)
tools = appendValues(tools, fmt)
return tools
