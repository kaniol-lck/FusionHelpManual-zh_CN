require "config"

for _, fileName in ipairs(fileNames) do
	os.execute ("cp "..folderName..fileName.." "..fileName)
end