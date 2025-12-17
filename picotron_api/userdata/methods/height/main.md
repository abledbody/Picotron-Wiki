# userdata:height(): height
## Overview
Gets the height of the userdata.

## Returns
### height: integer|nil
The number of rows in the userdata, or nil if the userdata does not have an internal height.

## Example
```lua
for y = 0, ud:height() - 1 do
	for x = 0, ud:width() - 1 do
		?ud:get(x, y)
	end
end
```