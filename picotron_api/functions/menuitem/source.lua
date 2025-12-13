function menuitem(m, a, b)

	_menu = _menu or {}

	-- clear
	if (not m) then
		_menu = {}
		_send_message(3, {event = "app_menu_item", clear = true})
		return
	end

	-- legacy pico-8 calling format
	if (a) then
		m = {
			id = m, -- integer position
			label = a,
			action = b
		}
	end

	-- add divider
	if (m == "---") m = {divider = true}
	if m.divider then
		_send_message(3, {event = "app_menu_item", attribs = m})
		return
	end

	if (not _menu[m.id]) then
		_menu[m.id] = m
	elseif not m.label then
		-- remove
		_menu[m.id] = nil
	else
		-- update items
		for k,v in pairs(m) do
			_menu[m.id][k] = v
		end
	end

	-- resend whole menu item state (wm doesn't need to handle partial changes)
	-- also handles deletion

--	_send_message(3, {event = "app_menu_item", attribs = _menu[m.id] or m})
	_send_message(3, {event = "app_menu_item", attribs = eval_menuitem(_menu[m.id] or m)})

end