# userdata:width(): width
## Overview
Gets the width of the userdata.

## Returns
### width: integer
The number of columns in the userdata.

## Example
```lua
for y = 0, ud:height() - 1 do
	for x = 0, ud:width() - 1 do
		?ud:get(x, y)
	end
end
```