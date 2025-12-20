# window([width,height],attribs)

## Overview

Create a window and/or set the window's attributes.

Source: [source.lua](source.lua)

## Arguments

### [width,height]

Proportions of the window

### attribs

Table of desired attributes of the window

Cannot overwrite `parent_pid`

#### `width`: number

width in pixels (not including the frame)

#### `height`: height

height in pixels

#### `title`: string

set a title displayed on the window's titlebar

#### `pauseable`: boolean

false to turn off the app menu that normally comes up with ENTER/START button

#### `tabbed`: boolean

true to open in a tabbed workspace (like the code editor)

#### `has_frame`: boolean

Default: true

Whether to have a frame around the window

#### `moveable`: boolean

Default: true

Whether to allow the window to be dragged

#### `resizeable`: boolean

Default: true

Whether to allow the window to be resized

#### `wallpaper`: boolean

Default: true

acts as a wallpaper:
* z defaults to -1000 in that case
* opens a filenav (for the desktop interface)

#### `autoclose`: boolean

close window when is no longer in focus or when press escape

#### `x`: number

Position of the window

#### `y`: number

Position of the window

#### `z`: number

Default: 0

windows with higher z are drawn on top.

#### `cursor`: string|number

0 for no cursor

1 for Default

userdata for a custom cursor

Use strings for some built in cursors, e.g: `pointer`

#### `squashable`: boolean

window resizes itself to stay within the desktop region

#### `background_updates`: boolean

allow _update() callbacks when parent window is not visible

#### `background_draws`: boolean

allow _draw() callbacks when parent window is not visible

### `show_context_menu`: boolean

displays the menu at the user's cursor

### `ghost`: boolean

Window is drawn, uninteractable, inputs passthrough to the below window