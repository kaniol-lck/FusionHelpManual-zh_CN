--concat *.md files in README.md
local outputFile = assert(io.open("./output.md", "w"))

local filepaths = {
	"Scripting Guide/",
	"Scripting Reference/",
	"Index/"
}

local readmeFile = assert(io.open("./README.md", "r"))
for l in readmeFile:lines() do
	l = string.gsub(l, "<a href='.+%.md'>(.+)</a>", function(str)
		print(str)
		return "<a href='#"..string.lower(string.gsub(string.gsub(str, " ", "-"), "’", "")).."'>"..str.."<a>"
	end)
	l = string.gsub(l, "<a href='.+#(.-)'>", "<a href='#%1'>")
	outputFile:write(l, "\n")
end
readmeFile:close()
outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")

local aboutFile = assert(io.open("About this Document.md", "r"))
outputFile:write(aboutFile:read("*a"))
outputFile:write([[<div STYLE="page-break-after: always;"></div>]], "\n")
aboutFile:close()

for _, filepath in ipairs(filepaths) do
	local f = assert(io.open(filepath.."output.md", "r"))
	for l in f:lines() do
		l = string.gsub(l, "!%[(.*)%]%(images/(.*)%)", "!%[%1%]%("..filepath.."images/%2%)")
		l = string.gsub(l, [[src="images/(.*)"]], [[src="]]..filepath..[[images/%1"]])
		outputFile:write(l, "\n")
	end
	outputFile:write("\n")
	f:close()
end
outputFile:close()