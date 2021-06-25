--concat *.md files in README.md
local filenames = {}
local indexFile = assert(io.open("./README.md", "r"))
local outputFile = assert(io.open("./output.md", "w"))
for line in indexFile:lines() do
	local name, filename = string.match(line, "%[(.*)%]%((.+%.md)%)")
	if filename then
		filenames[#filenames + 1] = { name, filename }
		line = string.gsub(line, "%((.+%.md)%)", "(#"..name..")")
	end
	outputFile:write(line, "\n")
end
indexFile:close()
outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")

for _, t in ipairs(filenames) do
	name, filename = t[1], t[2]
	filename = string.gsub(filename, "%%20", " ")
	f = assert(io.open(filename, "r"))
	for l in f:lines() do
		outputFile:write(l, "\n")
	end
	outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")
	f:close()
end
outputFile:close()