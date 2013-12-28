(* The save command supports the following formats for saving image data: JPEG2, TIFF, JPEG, PICT, BMP, PSD, PNG, PDF, and QuickTime Image.

Always save the image data to a new file, do not attempt to save the image data into the existing source file. *)

set this_file to choose file without invisibles
set the target_path to (choose file name default name "newimage.tif") as Unicode text
try
	tell application "Image Events"
		launch
		-- open the image file
		set this_image to open this_file
		-- save in new file
		save this_image as TIFF in file target_path with icon
		-- purge the open image data
		close this_image
	end tell
on error error_message
	display dialog error_message
end try

(* To convert an image file to another format, create a new file in the desired format and delete the orignial file: *)

set this_file to choose file without invisibles
try
	tell application "Image Events"
		launch
		-- get the parent folder of the image file
		set the parent_folder to the container of this_file
		-- derive new name for the new image file
		set the new_name to my add_extension(this_file, "tif")
		-- look for an existing file
		if (exists file new_name of the parent_folder) then
			error "A file named \"" & new_name & "\" already exists."
		end if
		-- open the image file
		set this_image to open this_file
		-- save in new file. The result is a file ref to the new file
		set the new_image to save this_image as TIFF in file new_name of the parent_folder with icon
		-- purge the open image data
		close this_image
	end tell
	tell application "Finder"
		-- delete the original file
		delete this_file
	end tell
on error error_message
	display dialog error_message
end try

on add_extension(this_file, new_extension)
	set this_info to the info for this_file
	set this_name to the name of this_info
	set this_extension to the name extension of this_info
	if this_extension is missing value then
		set the default_name to this_name
	else
		set the default_name to text 1 thru -((length of this_extension) + 2) of this_name
	end if
	return (the default_name & "." & the new_extension)
end add_extension