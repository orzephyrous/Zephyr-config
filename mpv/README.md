# mpv configuration

Custom settings for mpv.

## player configs

### mpv.conf

set screenshot format to png

set OSD font to LXGW Wenkai Mono, font size 56 border 3 (for better Chinese support)

set volume max to 200 (default was 130)

### input.conf

add commands and descriptions for script hotkeys, add comments for command_palette

quit: ESC -> q (mpv setting)

Mouse Wheel, volume change by 5 (default by 2)

show commands: C -> _

show config editor: c -> Ctrl+c

load sub or audio: Alt+s/a -> Alt+S/A

stop: Ctrl+s -> !

Space: speed up when pressed(inputevent.lua)

## scripts

### autoload.lua

**Original:** [autoload.lua](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua)

**Modifications:** None

### seek-to.lua

**Original:** [seek-to](https://github.com/occivink/mpv-scripts#seek-tolua)

**Modifications:** 

[Line 27] add underline for the selected digit (bold LXGW Wenkai Mono is not distinguishable)

### playlistmanager.lua

**Original:** [playlistmanager](https://github.com/jonniek/mpv-playlistmanager)

**Dependencies:** yt-dlp

**Modifications:** Better Chinese support

_.conf:_

Use LXGW Wenkai Mono, a monospace Chinese font

Smaller font size and border setting

Slice long filenames set to true

Add Chinese font width settings (default: 2 chars, need monospace font)

_.lua:_

Better slice long filenames (Chinese characters count as given chars instead of 3 in lua)

### pause-indicator.lua

**Original:** [pause-indicator](https://gist.github.com/torque/9dbc69543118347d2e5f43239a7e609a)

**Modifications:** smaller indicator on lower left

### webm.lua

**Original:** [webm](https://github.com/ekisu/mpv-webm)

**Modifications:** hotkey changed to Alt+w

### clipshot.lua

**Original:** [clipshot](https://github.com/ObserverOfTime/mpv-scripts/blob/master/clipshot.lua)

**Modifications:** More specific OSD messages

### thumbfast.lua

**Original:** [thumbfast](https://github.com/po5/thumbfast)

**Modifications:** None

### osc.lua

**Original:** [osc.lua](https://github.com/po5/thumbfast/blob/vanilla-osc/player/lua/osc.lua)

**Modifications:** None

replaces original osc to integrate thumbfasf.lua

### inputevent.lua

**Original:** [inputevent](https://github.com/natural-harmonia-gropius/input-event)

**Modifications:** None

### file-browser.lua

**Original:** [file-browser](https://github.com/CogentRedTester/mpv-file-browser)

**Modifications:** Set text color to white, remove dash lines in header.

## shaders

**Original:** [Anime4K](https://github.com/bloc97/Anime4K)

**Modifications:** None

Anime4K glsl shaders
