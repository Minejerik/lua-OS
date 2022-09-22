Colors = require('colors')
Stand = require('standard')
Version = "A1.3"

Bar = "███████████████████████████████████████████████"
Text = 'Lua OS'

function top()
io.write(Colors.yellow..Bar..Colors.none..Colors.white..Text..Colors.none..Colors.yellow..Bar..Colors.none)
for i = 1, 3, 1 do
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
loadfile('startup.lua')
main()