-- ukebot.lua
-- Uke controlled by a learning AI


local injuryblue= 0
local injuryred = 0
local joint = 1
local pos = 1
local genes = {}
local frame = 1

function start()
	choose()
end


function next_game()

	start_new_game()
	
end

function choose()
	--echo("Taking a move!")
	for k,v in pairs(JOINTS) do

		pos = math.random(1,4)
			
		set_joint_state(0, v, pos)
			
		joint = choice
	end
	
	step_game()
end

add_hook("new_game", "start the game", start)
add_hook("end_game","start next game",next_game)
add_hook("enter_freeze","keep stepping",choose)