# menuitem

## Overview

`menuitem` lets you edit the drop down menu on the window / context menu of the window.

This has multiple different argument setups.
Source: [source.lua](source.lua)

# menuitem()

## Overview

Leaving the function with no arguments clears the menu of its items

## Returns

Returns nothing

# menuitem(m)

## Overview

Picotron method for menu items, more capability than the legacy support p8 method

## Arguments

### m

Setting this to `---` creates a divider menu item

Otherwise modifies the menu through `m` acting as a table.

`m` having the following values can have different effects:

#### id

Sets the ID of the item, replaces any item with this id with this.

#### label

The text to display as the option

A lack of label causes the item to be deleted

## Returns

Returns nothing