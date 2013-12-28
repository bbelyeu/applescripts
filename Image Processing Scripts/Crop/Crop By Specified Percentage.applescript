set this_file to choose file
set the vertical_crop to 0
set the horizontal_crop to 0.32 -- 32%
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- get dimensions of the image
		copy dimensions of this_image to {W, H}
		-- perform action
		crop this_image to dimensions Â
			{W - (W * horizontal_crop), H - (H * vertical_crop)}
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try