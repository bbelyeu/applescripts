(* Padding an image will add black space around the image to the dimensions indicated in the script command. The pad command takes a list of two integers for the to dimensions parameter: the new width (in pixels) for the image, and the new height for the image *)
set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- perform action
		pad this_image to dimensions {640, 480}
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try