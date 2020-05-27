
--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

local level = nil;

function onInit()
	local nodeChar = getDatabaseNode().getParent();
	DB.addHandler(DB.getPath(nodeChar, "level"), "onUpdate", onLevelUpdate);

	onLevelUpdate()
end

function onClose()
	DB.removeHandler(DB.getPath(nodeChar, "level"), "onUpdate", onLevelUpdate);
end

function onLevelUpdate()
	local nodeChar = getDatabaseNode().getParent();
	level = DB.getValue(nodeChar, 'level', 0);
	applyFilter();
end

function onFilter(w)
	local circle_name = w.name.getValue()
	if not circle_name or circle_name == "" then
		return false;
	end

	if level and w.level.getValue() > level then
		return false;
	end

	return true;
end
