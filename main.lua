function replace_char(pos, str, r)
    return str:sub(1, pos-1) .. r .. str:sub(pos+1)
end
C = require('libs.colors')
Ec = require('libs.ec')
Stand = require('libs.standard')
Los = require('libs.los')
Version = "A1.4.5"
Config = Stand.getfiletable('config.md')
Debug = Config[12]
local startup = Config[10]
if Debug == true then
Stand.printtable(Config)
end

Bar = Config[4]
Text = Config[6]
Bar1color = "\27[0;33m"
Bar2color = "\27[0;33m"
Textcolor = ""

function top()
io.write(Bar1color..Bar..C.none..C.white..Textcolor..Text..C.none..C.none..Bar2color..Bar..C.none)
for i = 1, Config[8], 1 do
io.write('\n')
end
end

function loadfile(file)
if Stand.file_exists(file) then
temp = Stand.ingest(file)
temp = loadstring(temp)
os.execute('clear')
temp()
else
print(C.red..'File doesnt exist!'..C.none)
end
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
--clear()
end

function config()
os.execute('clear')
dofile('config.lua')
end

function bardefault()
Bar = Config[4]
Text = Config[6]
clear()
end

function printfile(file)
if file == nil then main() end
if not Stand.file_exists(file) then print(C.red.."File not found"..C.none); main() end
temp = Stand.ingest(file)
print(temp)
end


local temp = string.lower(io.read())

if temp == "ls" or temp == "clear" or temp == "top" or temp == "bardefault" or temp == "runprintedfile" or temp=="config" then
temp = temp.."()"
else
if Debug == "true" then print(temp) end
local tempa = string.find(temp," ")
if tempa == nil then print(C.red..'This requires arguments'..C.none); main() end
if Debug == "true" then print(tempa) end
temp = replace_char(tempa,temp,"('")
if Debug == "true" then print(temp) end
temp = temp .. "')"
temp = string.gsub(temp," ","','")
end
if Debug == "true" then print(temp) end
temp = loadstring(temp)
temp()
main()
end
top()
if startup == "true" then
if Stand.file_exists('startup.lua') then
loadfile('startup.lua')
end
end

main()