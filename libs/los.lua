local temp
local los = {}

los.getinfo = function()
return Version..",".._VERSION
end

los.settop = function(surrounding,text)
Bar = surrounding
Text = text
end

los.settopcolor = function (bar1,text,bar2)
Bar1color = bar1
Textcolor = text
Bar2color = bar2
end


return los