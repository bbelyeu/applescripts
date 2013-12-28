(* Scaling an image will increase or decrease the dimensions of an image while maintaining the current image resolution. Therefore, a 72 DPI image scaled to 50% will still be 72 DPI.

The scale command must include one of two parameters indicating the amount of scaling to apply:

The to size parameter takes a single integer indicating the new value for longest dimension to be scaled (either height or width, whichever is longer).

The by factor parameter takes a number indicating the percentage of scaling to apply. The value 1 is 100%. The value .5 is 50%. The value 1.5 is 150% and so on. *)


set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- perform action
		scale this_image to size 640
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try


set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- perform action
		scale this_image by factor 0.75
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try