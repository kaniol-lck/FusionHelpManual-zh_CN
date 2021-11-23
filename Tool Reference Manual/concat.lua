--concat *.md files in README.md
local filepaths = {}
local indexFile = assert(io.open("./README.md", "r"))
local outputFile = assert(io.open("./output.md", "w"))
for line in indexFile:lines() do
	local name, filename = string.match(line, "%[(.*)%]%((.+%.md)%)")
	if filename then
		filepaths[#filepaths + 1] = { name, string.gsub(filename, "README%.md", "") }
		line = string.gsub(line, "%((.+%.md)%)", "(#"..string.lower(name)..")")
	end
	outputFile:write(line, "\n")
end
indexFile:close()
outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")

for _, t in ipairs(filepaths) do
	local name, filepath = t[1], t[2]
	filepath = string.gsub(filepath, "%%20", " ")
	--print("cd \""..filepath.."\"\nlua concat.lua\ncd ..\n")
	local f = assert(io.open(filepath.."output.md", "r"))
	if f then
		for l in f:lines() do
			l = string.gsub(l, "!%[(.*)%]%(images/(.*)%)", "!%[%1%]%("..filepath.."images/%2%)")
			l = string.gsub(l, [[<img src="images/(.*)" alt="(.*)">]], [[<img src="]]..filepath..[[images/%1" alt="%2">]])
			outputFile:write(l, "\n")
		end
	--outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")
		f:close()
	--os.execute("ROBOCOPY \""..filepath.."images".."\" ./images /E /MT:30")
	end
end
outputFile:close()
