local temp
local los = {}

los.getinfo = function()
return Version..",".._VERSION
end

los.settop = function(text,surrounding)
Bar = surrounding
Text = text
return
end


return los