--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

local iscustom = true;

function onInit()
	setRadialOptions();

	onStatUpdate();
end

function onMenuSelection(selection, subselection)
	if selection == 6 and subselection == 7 then
		local node = getDatabaseNode();
		if node then
			node.delete();
		else
			close();
		end
	end
end

function onStatUpdate()
	stat.update(statname.getStringValue());
end

-- This function is called to set the entry to non-custom or custom.
-- Custom entries have configurable stats and editable labels.
function setCustom(state)
	iscustom = state;

	if iscustom then
		label.setEnabled(true);
		label.setLine(true);
		skill_group.setEnabled(true);
		skill_group.setLine(true);
	else
		label.setEnabled(false);
		label.setLine(false);
		skill_group.setEnabled(false);
		skill_group.setLine(false);
	end

	setRadialOptions();
end

function isCustom()
	return iscustom;
end

function setRadialOptions()
	resetMenuItems();

	if iscustom then
		registerMenuItem(Interface.getString("list_menu_deleteitem"), "delete", 6);
		registerMenuItem(Interface.getString("list_menu_deleteconfirm"), "delete", 6, 7);
	end
end
