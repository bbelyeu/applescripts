set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- perform action
		flip this_image with horizontal -- or vertical
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try