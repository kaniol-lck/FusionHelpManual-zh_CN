local lfs = require "lfs"

local function traver(relativePath, doer)
	local traverpath, attr
	for entry in lfs.dir(lfs.currentdir().."/"..relativePath) do
		if entry~='.' and entry~='..' then
			if relativePath == "" then
				traverpath = entry
			else
				traverpath = relativePath.."/"..entry
			end
			attr = lfs.attributes(lfs.currentdir().."/"..traverpath)
			if(type(attr)~="table") then --如果获取不到属性表则报错
				print('ERROR:'..traverpath..'is not a path')
				return nil
			end
			if(attr.mode == "directory") then
				traver(traverpath, doer)
			elseif attr.mode=="file" then
				if string.find(entry, "%.md$") and entry ~= "output.md" then
					doer(traverpath)
				end
			end
		end
	end
end

traver("", function(path)
	local name = string.match(path, "([^/]-)%.md")
	local filename = string.match(path, "(.+)%.md")
	local dir = string.match(path, "^(.-)/[^/]+%.md")
	if dir and not lfs.attributes(lfs.currentdir().."/output/"..dir) then os.execute([[mkdir "output/]]..dir..[["]]) end
	os.execute([[pandoc --standalone --metadata pagetitle="]]..name..[[" --css ../themes/scripting-manual.css "]]..filename..[[.md" -o "output/]]..filename..[[.html"]])
	print("Converting "..path)
end)