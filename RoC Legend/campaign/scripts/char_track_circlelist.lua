
--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

local track = nil;

function onInit()
	track = progression[1];
	Debug.chat("track_circlelist init")
	Debug.chat("Showing " .. getWindowCount(true) .. " of " .. getWindowCount() .. " circles");

	fillCircles();
end

function onFilter(w)
	if w.track.getValue() ~= track then
		return false;
	end

	return true;
end

function fillCircles()
	applyFilter(true);
	local seenCircles = {};
	for _,w in ipairs(getWindows(true)) do
		seenCircles[w.circle.getValue()] = true;
	end

	for idx = 1, 7 do
		if not seenCircles[idx] then
			addCircle(idx);
		end
	end
end

function addCircle(circle)
	Debug.chat("addCircle circle: " .. circle);
	local w = createWindow();
	w.track.setValue(track);
	w.circle.setValue(circle);
	w.level.setValue(DataCommon.track_progression[track][circle]);
end
