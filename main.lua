Colors = require('colors')
Stand = require('standard')
Los = require('los')
Version = "A1.3"

Bar = "███████████████████████████████████████████████"
Text = 'Lua OS'
Bar1color = "\27[0;33m"
Bar2color = "\27[0;33m"
Textcolor = ""

function top()
io.write(Bar1color..Bar..Colors.none..Colors.white..Textcolor..Text..Colors.none..Colors.none..Bar2color..Bar..Colors.none)
for i = 1, 3, 1 do
io.write('\n')
end
end

function loadfile(file)
if not Stand.file_exists(file) then print"File not found"; main() end
temp = Stand.ingest(file)
temp = loadstring(temp)
os.execute('clear')
temp()
end

function main()

function clear()
os.execute('clear')
top()
end

function mkdir(dir)
os.execute('mkdir '..dir)
end

function ls()
Stand.listdir()
end

function runprintedfile()
temp = loadstring(temp)
clear()
temp()
end

function makefile(file)
file = io.open(file, "w")
file:write("")
file:close()

end

function printfile(file)
if not Stand.file_exists(file) then print"File not found"; main() end
temp = Stand.ingest(file)
print(temp)
end

local temp = io.read()
if not temp:find(')') and not temp:find(")") then  temp = temp.."()" end
temp = loadstring(temp)
temp()
main()
end
top()
if Stand.file_exists('startup.lua') then
loadfile('startup.lua')
end
main()