# blit_720p `boolean`

Use Picotron's 720p upscaler, information by @bloodninja

720p monitors (or resolutions which are multiples of that, such as 1440p) do not allow Picotron to show the display edge-to-edge - there will be black bars around the image.

When players enable this somewhat vaguely-named option in Settings.p64, Picotron zooms in so that the display is filled, meaning some outer areas are cut off. Those of you of a certain vintage may remember this as overscan.

## 800p/Steamdeck example

800p-fill-safe area

For 800p and Deck players using the "fill screen" mode, the visible area is a rectangle of 432x270 starting at (24,0), visible with this code:
```lua
rect(24,0,467,269,31)
print("Steam Deck (800p in 'Fill' display mode)",28,2,31)
```

By default, the Deck does very well in 720p mode without enabling the "720p scaler" option, instead keeping small black bars at the top and bottom of the display while keeping the image sharp. For those players who use the Deck overlay to force the image to fill the screen, some horizontal area may be cut off.

## 720p-safe area

For users using the "720p scaler", the visible area is a rectangle of 360x202 starting at (60,34), visible with this code:

```lua
rect(60,34,419,235,8)
print("720p scaler",62,36,8)
```

[Example Cart](https://www.lexaloffle.com/bbs/?tid=153523) by @bloodninja for an example!

![Display of the cart in runtime](https://www.lexaloffle.com/bbs/thumbs/pico64_dagupigewe-0.png)