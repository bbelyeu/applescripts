set this_file to choose file
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		-- open the image file
		set this_image to open this_file
		-- get dimensions of the image
		copy dimensions of this_image to {W, H}
		-- determine the letterbox area
		set crop_W to W
		-- calcluate the 16:9 proportions
		set crop_H to (W * 9) / 16
		-- perform action
		crop this_image to dimensions {crop_W, crop_H}
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try