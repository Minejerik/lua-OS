
option = 1
local curser = "	<-- \n"
function main()
io.write("Default Bars Current: "..Config[4]); if option == 1 then io.write(curser) else io.write("\n") end
io.write("Default Text Current: "..Config[6]); if option == 2 then io.write(curser) else io.write("\n") end
io.write("Number of Newlines Current: "..Config[8]); if option == 3 then io.write(curser) else io.write("\n") end
if Config[10] == "true" then io.write("(x)Use Startup File?") else io.write("( )Use Startup File?") end; if option == 4 then io.write(curser) else io.write("\n") end
if Config[12] == "true" then io.write("(x)Debug Mode?") else io.write("( )Debug Mode?") end; if option == 5 then io.write(curser) else io.write("\n") end
io.write("Exit "); if option == 6 then io.write(curser) else io.write("\n") end
local input = io.read()
if input == "w" then
if option ~= 1 then
option = option - 1
end
elseif input == "s" then
if option ~= 6 then
option = option + 1
end
elseif input == "q" then
if option == 1 then
Stand.setfileline("config.md",io.read(),4)
end
if option == 2 then
Stand.setfileline("config.md",io.read(),6)
end
if option == 3 then
Stand.setfileline("config.md",io.read(),8)
end
if option == 4 then
if Config[10] == "true" then
Stand.setfileline("config.md","false",10)
else
Stand.setfileline("config.md","true",10)
end
end
if option == 5 then
if Config[12] == "true" then
Stand.setfileline("config.md","false",12)
else
Stand.setfileline("config.md","true",12)
end
end
if option == 6 then
os.exit()
end


Config = Stand.getfiletable('config.md')
end

os.execute('clear')
main()
end
main()