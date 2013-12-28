on derive_filename(this_item, new_extension, increment_separator, target_folder)
	-- A sub-routine used for deriving the name and path of a new file using the name of an existing file
	-- Pass in file ref in alias format, the new name extension, an increment separator, and any target directory (in alias format)
	-- Name and HFS path for new file are returned. The name is incremented if a file exists in the target location.
	-- Pass a null string for the target directory to use the item's parent directory
	-- Pass a null string for the new name extension to use the item's current name extension
	tell application "Finder"
		if target_folder is "" then
			set the target_folder to the container of this_item
		end if
		set the file_name to the name of this_item
		set file_extension to the name extension of this_item
		if the file_extension is "" then
			set the trimmed_name to the file_name
			set extension_separator to ""
		else
			set the trimmed_name to text 1 thru -((length of file_extension) + 2) of the file_name
			set extension_separator to "."
		end if
		if the new_extension is "" then
			set target_name to file_name
			set target_extension to file_extension
		else
			set target_extension to new_extension
			set target_name to (the trimmed_name & extension_separator & target_extension) as Unicode text
		end if
		if (exists document file target_name of target_folder) then
			set the name_increment to 1
			repeat
				set the new_name to (the trimmed_name & increment_separator & (name_increment as Unicode text) & extension_separator & target_extension) as Unicode text
				if not (exists document file new_name of the target_folder) then
					set the target_HFSpath to ((target_folder as Unicode text) & new_name)
					return {new_name, target_HFSpath}
				else
					set the name_increment to the name_increment + 1
				end if
			end repeat
		else
			set the target_HFSpath to ((target_folder as Unicode text) & target_name)
			return {target_name, target_HFSpath}
		end if
	end tell
end derive_filename