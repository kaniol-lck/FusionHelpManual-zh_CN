local folderName = os.getenv("APPDATA").."/Typora/themes/"
local fileNames = {
	"tools-reference.css",
	"scripting-guide-and-reference.css"
}

for _, fileName in ipairs(fileNames) do
	os.execute ("cp "..folderName..fileName.." "..fileName)
end