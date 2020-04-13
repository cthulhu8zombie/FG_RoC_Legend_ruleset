--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	registerMenuItem(Interface.getString("list_menu_createitem"), "insert", 5);

	-- Construct default skills
	constructDefaultSkills();

	local nodeChar = getDatabaseNode().getParent();
	local sChar = nodeChar.getNodeName();
	DB.addHandler(sChar ..  ".abilities", "onChildUpdate", onStatUpdate);
end

function onClose()
	local nodeChar = getDatabaseNode().getParent();
	local sChar = nodeChar.getNodeName();
	DB.removeHandler(sChar ..  ".abilities", "onChildUpdate", onStatUpdate);
end

function onListChanged()
	update();
end

function update()
	local bEditMode = (window.skilllist_iedit.getValue() == 1);
	window.idelete_header.setVisible(bEditMode);
	for _,w in ipairs(getWindows()) do
		if w.isCustom() then
			w.idelete_spacer.setVisible(false);
			w.idelete.setVisibility(bEditMode);
		else
			w.idelete_spacer.setVisible(bEditMode);
			w.idelete.setVisibility(false);
		end
	end
end

function onStatUpdate()
	for _,w in pairs(getWindows()) do
		w.onStatUpdate();
	end
end

function addEntry(bFocus)
	local w = createWindow();
	w.setCustom(true);
	if bFocus and w then
		w.label.setFocus();
	end
	return w;
end

function onMenuSelection(item)
	if item == 5 then
		addEntry(true);
	end
end

-- Create default skill selection
function constructDefaultSkills()
	-- Collect existing entries
	local entrymap = {};

	for _,w in pairs(getWindows()) do
		local sLabel = w.label.getValue();

		if DataCommon.skilldata[sLabel] then
			if not entrymap[sLabel] then
				entrymap[sLabel] = { w };
			else
				table.insert(entrymap[sLabel], w);
			end
		else
			w.setCustom(true);
		end
	end

	-- Set properties and create missing entries for all known skills
	for k, t in pairs(DataCommon.skilldata) do
		local matches = entrymap[k];

		if not matches then
			local w = createWindow();
			if w then
				w.label.setValue(k);
				if t.stat then
					w.statname.setStringValue(t.stat);
				else
					w.statname.setStringValue("");
				end
				matches = { w };
			end
		end

		-- Update properties
		local bCustom = false;
		for _, match in pairs(matches) do
			match.setCustom(bCustom);

			if not bCustom and t.skill_group then
				local nodeSkill = match.getDatabaseNode();
				DB.setValue(nodeSkill, "skill_group", "string", t.skill_group)
			end

			bCustom = true;
		end
	end
end
