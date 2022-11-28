local function replace_char(pos, str, r)
    return str:sub(1, pos-1) .. r .. str:sub(pos+1)
end
C = require('libs.colors')
Ec = require('libs.ec')
Stand = require('libs.standard')
Los = require('libs.los')
Version = "A1.4.7"
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
Usecolor = Config[14]

local function top()
if Usecolor == true then
io.write(Bar1color..Bar..C.none..C.white..Text..C.none..Bar2color..Bar..C.none)
else
io.write(Bar..Text..Bar)
end
for i = 1, Config[8], 1 do
io.write('\n')
end
end


function loadfile(file)
if Stand.file_exists(file) then
file = Stand.ingest(file)
local temp = load(file)
os.execute('clear')
temp()
else
if Usecolor == true then
print(C.red..'File doesnt exist!'..C.none)
else
print('File doesnt exist!')
end
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
temp = load(temp)
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
if not Stand.file_exists(file) then  if Usecolor == true then print(C.red.."File not found"..C.none) else print('File not found') end; main() end
temp = Stand.ingest(file)
print(temp)
end
end

function credits()
print('lua os version: '..Version)
print('Made by Minejerik/Jaan-Erik Foedisch')
print('Based of linux by Linus Torvalds')
end

local temp = string.lower(io.read())

if temp == "ls" or temp == "clear" or temp == "top" or temp == "bardefault" or temp == "runprintedfile" or temp=="config" or temp=='credits' then
temp = temp.."()"
else
if Debug == "true" then print(temp) end
local tempa = string.find(temp," ")
if tempa == nil then if Usecolor == true then print(C.red..'This requires arguments or doesnt exist'..C.none) else print('This requires arguments or doesnt exist') end; main() end
if Debug == "true" then print(tempa) end
temp = replace_char(tempa,temp,"('")
if Debug == "true" then print(temp) end
temp = temp .. "')"
temp = string.gsub(temp," ","','")
end
if Debug == "true" then print(temp) end
local run = load(temp)
run()
main()

top()
if startup == "true" then
if Stand.file_exists('startup.lua') then
loadfile('startup.lua')
else
print(C.red..'NO STARTUP FILE FOUND'..C.none)
end
end

main()