local Predicate = {}
Predicate.__index = Predicate

function Predicate.new(type, args, func)
	local pred = args or {}
	pred.type = type
	pred.__call = func

	function pred:__tostring()
		return ("Predicate(%s)"):format(self.type)
	end

	setmetatable(pred, pred)
	return pred
end

return Predicate
