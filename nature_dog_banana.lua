--Hiking Helper--

--global variables
local trailAmount = 0
local trailDifficulty = 0
 
--main function
local function main()
	--start user interface
	print("Welcome to Hiking Helper!")
	--prompt user for number of trails
	print("Please enter the number of trails you would like to investigate:")
	trailAmount = io.read()
	--prompt the user for the difficulty of the trails
	print("Please enter the difficulty of the trails, on a scale from 1-5:")
	trailDifficulty = io.read()
	--call function to find suitable trails
	hikingTrails(trailAmount,trailDifficulty)
end
 
--function to find suitable trails
function hikingTrails(trailAmt,trailDiff)
	--check for appropriate number of trails
	if trailAmt > 5 then
		print("Sorry, it is recommended that you attempt no more than 5 trails at a time.")
	--else check difficulty of trails
	else
		--if trail difficulity is 1, print easy trails
	 	if tonumber(trailDiff) == 1 then
		 	print("These easy trails are perferct for a first-time hiker:")
		 	easyTrails()
		--if trail difficulty is 2, print moderate trails
		elseif tonumber(trailDiff) == 2 then
			print("These moderate trails will challenge you also provide a beautiful view:")
			moderateTrails()
		--if trail difficulty is 3, print difficult trails
		elseif tonumber(trailDiff) == 3 then
			print("These difficult trails will test your physical endurance:")
			difficultTrails()
		--if trail difficulty is 4, print extreme trails
		elseif tonumber(trailDiff) == 4 then
			print("These extreme trails will push your limits:")
			extremeTrails()
		--if trail difficulty is 5, print elite trails
		elseif tonumber(trailDiff) == 5 then
		 	print("These elite trails are reserved for the most experienced and serious hikers:")
			eliteTrails()
		else
			print("Invalid input. Please use a number from 1-5.")
		end
	end
end
 
--function for easy trails
function easyTrails()
	print("Castle Rock Trail\nBasin Trail\nMossy Cave Trail\nRiverside Walk\nHidden Canyon Trail")
end
 
--function for moderate trails
function moderateTrails()
	print("Angels Landing Trail\nObservation Point Trail\nBig Springs Trail\nHanging Garden Trail\nKolob Arch Trail")
end

--function for difficult trails
function difficultTrails()
	print("Bull Creek Pass Trail\nTimber Creek Trail\nProvo Peak Trail\nCascade Falls Trail\nCecret Lake Trail")
end
 
--function for extreme trails
function extremeTrails()
	print("Summit Peak Trail\nMount Olympus Trail\nScout Cave Trail\nTimpanogos Peak Trail\nMount Baldy Trail")
end
 
--function for elite trails
function eliteTrails()
	print("Mist Trail\nHalf Dome Trail\nRim to Rim Trail\nWatchman Trail\nBackbone Trail")
end
 
--call main function
main()