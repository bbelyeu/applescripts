-- QuickTime supported image formats
property type_list : {"JPEG", "TIFF", "PNGf", "8BPS", "BMPf", "GIFf", "PDF ", "PICT"}
property extension_list : {"jpg", "jpeg", "tif", "tiff", "png", "psd", "bmp", "gif", "jp2", "pdf", "pict", "pct", "sgi", "tga"}
property typeIDs_list : {"public.jpeg", "public.tiff", "public.png", "com.adobe.photoshop-image", "com.microsoft.bmp", "com.compuserve.gif", "public.jpeg-2000", "com.adobe.pdf", "com.apple.pict", "com.sgi.sgi-image", "com.truevision.tga-image"}

-- This droplet processes files dropped onto the applet 
on open these_items
	repeat with i from 1 to the count of these_items
		set this_item to item i of these_items
		set the item_info to info for this_item
		if folder of the item_info is true then
			process_folder(this_item)
		else
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
			end if
		end if
	end repeat
end open

-- this sub-routine processes folders 
on process_folder(this_folder)
	set these_items to list folder this_folder without invisibles
	repeat with i from 1 to the count of these_items
		set this_item to alias ((this_folder as Unicode text) & (item i of these_items))
		set the item_info to info for this_item
		if folder of the item_info is true then
			process_folder(this_item)
		else
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
			if (alias of the item_info is false) and ((this_filetype is in the type_list) or (this_extension is in the extension_list) or (this_typeID is in typeIDs_list)) then
				process_item(this_item)
			end if
		end if
	end repeat
end process_folder

-- this sub-routine processes files 
on process_item(this_item)
	-- NOTE that the variable this_item is a file reference in alias format 
	-- FILE PROCESSING STATEMENTS GOES HERE 
end process_item