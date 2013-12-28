set this_file to choose file
-- indicate the proportions for the pad area
set H_proportion to 16
set V_proportion to 9
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- get dimensions of the image
		copy dimensions of this_image to {W, H}
		-- calculate pad dimensions
		if H_proportion is greater than V_proportion then
			set the new_W to (H * H_proportion) / V_proportion
			set pad_dimensions to {new_W, H}
		else
			set the new_H to (W * V_proportion) / H_proportion
			set pad_dimensions to {W, new_H}
		end if
		-- perform action
		pad this_image to dimensions pad_dimensions
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try
