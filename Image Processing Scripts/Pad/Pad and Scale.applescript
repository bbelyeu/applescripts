set this_file to choose file
-- indicate the final dimensions for the padded image
set target_W to 960
set target_H to 540
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- get dimensions of the image
		copy dimensions of this_image to {W, H}
		-- calculate pad dimensions
		if target_W is greater than target_H then
			set the new_W to (H * target_W) / target_H
			set pad_dimensions to {new_W, H}
			set the scale_dimension to target_W
		else
			set the new_H to (W * target_H) / target_W
			set pad_dimensions to {W, new_H}
			set the scale_dimension to target_H
		end if
		-- perform action
		pad this_image to dimensions pad_dimensions
		-- save the changes
		save this_image with icon
		-- perform action
		scale this_image to size scale_dimension
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try
