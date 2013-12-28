set this_file to choose file
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- extract the property value
		copy the resolution of this_image to {H_res, V_res}
		-- purge the open image data
		close this_image
	end tell
	display dialog "Resolution: " & (H_res as string)
on error error_message
	display dialog error_message
end try