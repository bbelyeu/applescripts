-- This droplet processes folders dropped onto the applet 
on open these_items
	repeat with i from 1 to the count of these_items
		set this_item to item i of these_items
		set the item_info to info for this_item
		if (alias of the item_info is false) and (folder of the item_info is true) then
			process_item(this_item)
		end if
	end repeat
end open

-- this sub-routine processes folders 
on process_item(this_item)
	-- NOTE that the variable this_item is a folder reference in alias format 
	-- FOLDER PROCESSING STATEMENTS GOES HERE 
end process_item