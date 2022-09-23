Colors = require('libs.colors')
Stand = require('libs.standard')
Los = require('libs.los')
Version = "A1.4.4"
Config = Stand.getfiletable('config.md')
if Config[12] == true then
Stand.printtable(Config)
end



Bar = Config[4]
Text = Config[6]
Bar1color = "\27[0;33m"
Bar2color = "\27[0;33m"
Textcolor = ""

function top()
io.write(Bar1color..Bar..Colors.none..Colors.white..Textcolor..Text..Colors.none..Colors.none..Bar2color..Bar..Colors.none)
for i = 1, Config[8], 1 do
io.write('\n')
end
end

function loadfile(file)
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

function changebar(bar,text)
Los.settop(bar,text)
end

function config()
os.execute('clear')
loadfile('config.lua')
end

function bardefault()
Bar = Config[4]
Text = Config[6]
end

function printfile(file)
if not Stand.file_exists(file) then print"File not found"; main() end
temp = Stand.ingest(file)
print(temp)
end

local temp = io.read()
if temp == "ls" or temp == "clear" or temp == "top" or temp == "bardefault" or temp == "runprintedfile" or temp=="config" then
if not temp:find(')') and not temp:find(")") then  temp = temp.."()" end
else
temp = string.gsub(temp," ","('")
temp = temp .. "')"
temp = string.gsub(temp,",","','")
end
if Config[12] == true then print(temp) end
temp = loadstring(temp)
temp()
main()
end
top()
if Config[10] == true then
if Stand.file_exists('startup.lua') then
loadfile('startup.lua')
end
end

main()