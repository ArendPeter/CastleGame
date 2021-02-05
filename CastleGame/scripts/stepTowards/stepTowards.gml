/// @desc Returns position which steps the current position toward the target
/// @param current position we're currently at
/// @param target target position
/// @param step how many units to step towards the target
function stepTowards(current, target, step) {
	if(abs(target-current) < step) return target

	return current + step*sign(target-current)
}