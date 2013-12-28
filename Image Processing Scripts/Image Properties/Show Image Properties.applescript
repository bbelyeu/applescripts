set this_file to choose file
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- extract the properties record
		set the props_rec to the properties of this_image
		-- purge the open image data
		close this_image
		-- extract the property values from the record
		set the image_info to ""
		set the image_info to the image_info & Â
			"Name: " & (name of props_rec) & return
		set the image_info to the image_info & Â
			"File: " & (path of image file of props_rec) & return
		set the image_info to the image_info & Â
			"Location: " & (path of location of props_rec) & return
		set the image_info to the image_info & Â
			"File Type: " & (file type of props_rec) & return
		set the image_info to the image_info & Â
			"Bit Depth: " & (bit depth of props_rec) & return
		set the image_info to the image_info & Â
			"Res: " & item 1 of (resolution of props_rec) & return
		set the image_info to the image_info & Â
			"Color Space: " & (color space of props_rec) & return
		copy (dimensions of props_rec) to {X, Y}
		set the image_info to the image_info & Â
			"Dimemsions: " & X & ", " & Y
	end tell
	display dialog image_info
on error error_message
	display dialog error_message
end try
