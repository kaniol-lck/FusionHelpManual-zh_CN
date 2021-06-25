require "config"

for _, fileName in ipairs(fileNames) do
	os.execute ("cp "..fileName.." "..folderName..fileName)
end