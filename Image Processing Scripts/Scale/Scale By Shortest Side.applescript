set this_file to choose file
set the target_length to 128
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- get dimensions of the image
		copy dimensions of this_image to {W, H}
		-- determine the shortest side and then
		-- calculate the new length for the longer side
		if W is less than H then
			set the scale_length to (H * target_length) / W
			set the scale_length to Â
				round scale_length rounding as taught in school
		else
			set the scale_length to (W * target_length) / H
			set the scale_length to Â
				round scale_length rounding as taught in school
		end if
		-- perform action
		scale this_image to size scale_length
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try