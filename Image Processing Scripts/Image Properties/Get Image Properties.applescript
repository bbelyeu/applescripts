-- getting the property record
set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- extract the properties record
		set the image_props to the properties of this_image
		-- {bit depth:millions of colors, file type:JPEG, image file:file "Mac OS X:Users:you:Desktop:00151.jpg" of application "Image Events", location:folder "Mac OS X:Users:you:Desktop:" of application "Image Events", resolution:{600.0, 600.0}, class:image, dimensions:{1504.0, 980.0}, name:"00151.jpg", color space:RGB}
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try

-- getting a specific property without invisibles
set this_file to choose file
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- extract the property value
		copy the resolution of this_image to {xres, yres}
		-- purge the open image data
		close this_image
	end tell
	display dialog "Resolution: " & (xres as string)
on error error_message
	display dialog error_message
end try