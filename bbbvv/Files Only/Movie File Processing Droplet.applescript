-- iDVD supported movie formats
property type_list : {"dvc!", "MooV", "M4V ", "mpg4"}
property extension_list : {"mov", "mp4", "dv", "m4v"}
property typeIDs_list : {"public.mpeg-4", "com.apple.quicktime-movie"}

-- This droplet processes files dropped onto the applet 
on open these_items
	repeat with i from 1 to the count of these_items
		set this_item to item i of these_items
		set the item_info to info for this_item
		try
			set this_extension to the name extension of this_info
		on error
			set this_extension to ""
		end try
		try
			set this_filetype to the file type of this_info
		on error
			set this_filetype to ""
		end try
		try
			set this_typeID to the type identifier of this_info
		on error
			set this_typeID to ""
		end try
		if (folder of the item_info is false) and (alias of the item_info is false) and ((this_filetype is in the type_list) or (this_extension is in the extension_list) or (this_typeID is in typeIDs_list)) then
			process_item(this_item)
		end if
	end repeat
end open

-- this sub-routine processes files 
on process_item(this_item)
	-- NOTE that the variable this_item is a file reference in alias format 
	-- FILE PROCESSING STATEMENTS GOES HERE 
end process_item