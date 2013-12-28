(*
The rotate command takes a positive integer as the value for the to angle parameter. 
To convert a negative rotation angle, such as -90 to a positive value, add 360: -90 + 360 = 270 
*)
set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- perform action
		rotate this_image to angle 270
		-- save the changes
		save this_image with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try