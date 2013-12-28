set this_file to choose file without invisibles
try
	tell application "Image Events"
		-- start the Image Events application
		launch
		set the new_format to PNG
		set the nme_ext to "png"
		set the thumb_size to 128
		-- derive new name for the new image file
		copy my derive_filename(this_file, nme_ext, "-", "") Â
			to {new_name, target_HFSpath}
		-- open the image file
		set this_image to open this_file
		-- scale to thumnail size
		scale this_image to size thumb_size
		-- save in new file. The result is a file ref to the new file
		set the new_image to save this_image Â
			as new_format in file target_HFSpath with icon
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

on derive_filename(this_item, new_extension, increment_separator, target_folder)
	-- A sub-routine used for deriving the name and path of a new file using the name of an existing file
	-- Pass in file ref in alias format, the new name extension, an increment separator, and any target directory (in alias format)
	-- Name and HFS path for new file are returned. The name is incremented if a file exists in the target location.
	-- Pass a null string for the target directory to use the item's parent directory
	-- Pass a null string for the new name extension to use the item's current name extension
	tell application "Finder"
		if target_folder is "" then
			set the target_folder to Â
				the container of this_item
		end if
		set the file_name to the name of this_item
		set file_extension to the name extension of this_item
		if the file_extension is "" then
			set the trimmed_name to the file_name
			set extension_separator to ""
		else
			set the trimmed_name to Â
				text 1 thru -((length of file_extension) + 2) Â
					of the file_name
			set extension_separator to "."
		end if
		if the new_extension is "" then
			set target_name to file_name
			set target_extension to file_extension
		else
			set target_extension to new_extension
			set target_name to Â
				(the trimmed_name & extension_separator & Â
					target_extension) as Unicode text
		end if
		if (exists document file target_name Â
			of target_folder) then
			set the name_increment to 1
			repeat
				set the new_name to Â
					(the trimmed_name & increment_separator & Â
						(name_increment as Unicode text) & Â
						extension_separator & Â
						target_extension) as Unicode text
				if not (exists document file new_name Â
					of the target_folder) then
					set the target_HFSpath to Â
						((target_folder as Unicode text) & Â
							new_name)
					return {new_name, target_HFSpath}
				else
					set the name_increment to Â
						the name_increment + 1
				end if
			end repeat
		else
			set the target_HFSpath to Â
				((target_folder as Unicode text) & target_name)
			return {target_name, target_HFSpath}
		end if
	end tell
end derive_filename