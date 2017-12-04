local M = {}

M.UL = 1
M.U = 2
M.UR = 3
M.R = 4
M.DR = 5
M.D = 6
M.DL = 7
M.L = 8

function M.dir_to_anim(dir, anims)
	-- right
	if dir.x > 0.25 then
		if dir.y > 0.25 then
			return anims[M.UR]
		elseif dir.y < -0.25 then
			return anims[M.DR]
		else
			return anims[M.R]
		end
	-- left
	elseif dir.x < -0.25 then
		if dir.y > 0.25 then
			return anims[M.UL]
		elseif dir.y < -0.25 then
			return anims[M.DL]
		else
			return anims[M.L]
		end
	-- no horizontal movement
	else
		if dir.y > 0.25 then
			return anims[M.U]
		elseif dir.y < -0.25 then
			return anims[M.D]
		else
			return anims[M.D]
		end
	end
end


return M