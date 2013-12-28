-- query the database
set database_file to (POSIX path of (path to documents folder)) & "Databases/presidents.dbev"

tell application "Database Events"
	tell database database_file
		get value of field "Last Name" of (every record whose value of field "Start Year" is greater than or equal to 1800 and value of field "Start Year" is less than or equal to 1900)
		-- {"Adams", "Arthur", "Buchanan", "Cleveland", "Cleveland", "Fillmore", "Garfield", "Grant", "Harrison", "Harrison", "Hayes", "Jackson", "Jefferson", "Johnson", "Lincoln", "Madison", "McKinley", "Monroe", "Pierce", "Polk", "Taylor", "Tyler", "Van Buren"}
		get value of field "Last Name" of (every record whose value of field "Party" is "Republican")
		get value of field "Last Name" of (every record whose value of field "Start Year" is greater than 1899)
		get the first record whose value of field "Last Name" contains "Adams"
		get the value of field "Last Name" of every record
	end tell
end tell

