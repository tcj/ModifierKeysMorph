This morph is intended to show you the state of the modifier keys.  It uses EventSensor (Sensor) for this.

It's pretty bizarre how this works.

When under X11 (XQuartz) into a Linux VM, the way these morphs update themselves is surprising to me.

Some of the modifier key morphs will update when the key is released.  Others will update only after the key is released but the mouse has also been moved.  In addition:  some of the modifier keys will show as pressed when it's actually /other/ modifier keys that have been pressed.

"
self new openInWorld
self openInMainDockingBar
"
