property type_list : {} -- eg: {"PICT", "JPEG", "TIFF", "GIFf"} 
property extension_list : {} -- eg: {"txt", "text", "jpg", "jpeg"}, NOT: {".txt", ".text", ".jpg", ".jpeg"}
property typeIDs_list : {} -- eg: {"public.jpeg", "public.tiff", "public.png"}
property post_alert : true

on run
	repeat
		display dialog "My File Processing Droplet" & return & return & "Post User Alert: " & (post_alert as text) buttons {"Cancel", "Set Prefs", "Done"} default button 3
		if the button returned of the result is "Set Prefs" then
			display dialog "Should this droplet post an alert dialog when items that are not files are dragged onto it?" & return & return & "Current Status: " & (post_alert as text) buttons {"Cancel", "False", "True"}
			if the button returned of the result is "False" then
				set post_alert to false
			else
				set post_alert to true
			end if
		else
			return "done"
		end if
	end repeat
end run

-- This droplet processes files dropped onto the applet 
on open these_items
	repeat with i from 1 to the count of these_items
		set this_item to item i of these_items
		set the item_info to info for this_item
		set this_name to the name of the item_info
		try
			set this_extension to the name extension of item_info
		on error
			set this_extension to ""
		end try
		try
			set this_filetype to the file type of item_info
		on error
			set this_filetype to ""
		end try
		try
			set this_typeID to the type identifier of item_info
		on error
			set this_typeID to ""
		end try
		if (folder of the item_info is false) and (alias of the item_info is false) and ((this_filetype is in the type_list) or (this_extension is in the extension_list) or (this_typeID is in typeIDs_list)) then
			process_item(this_item)
		else if post_alert is true then
			display dialog "The item " & this_name & " is not a file." buttons {"Cancel", "Continue"} default button 2
		end if
	end repeat
end open

-- this sub-routine processes files 
on process_item(this_item)
	-- NOTE that the variable this_item is afile refernce in alias format 
	-- FILE PROCESSING STATEMENTS GOES HERE 
end process_item
