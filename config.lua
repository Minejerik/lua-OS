print("This will allow you to change the config without changing the files")
Stand.sleep(0.5)
print("MAKE SURE TO RESTART AS MOST STUFF DOESNT GO INTO AFFECT UNTIL RESTART")
Stand.sleep(0.5)
print("Default bars?")
Stand.setfileline('config.md',io.read(),4)
print("Default text?")
Stand.setfileline('config.md',io.read(),6)
print("Number of new lines")
Stand.setfileline('config.md',io.read(),8)
print("Use startup file?")
Stand.setfileline('config.md',io.read(),10)
print("Debug mode?")
Stand.setfileline('config.md',io.read(),12)
print('restart now?')
if io.read() == "y" then
os.exit()
end