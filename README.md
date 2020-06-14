# ModifierKeysMorph

![SCREENSHOT](images/modkeysmorph.png)

Morph for Squeak to show current state of modifier keys (optionally in docking bar)

Developed and tested in Squeak 5.2 and 4.5

## What it does

It shows the state of Shift, Control, Mac-option, and Command, according to
Sensor (EventSensor).

## How to get it

This git repository contains both a FileTree repo and a simple fileout.  You
can chose to clone this repo and add the filetree repo in Monticello, or to
just file-in the .st file.  The classes are all in category
`ModifierKeys-Core`.

## How to open it

To open it on its own:

`ModifierKeysMorph new openInWorld`

To open it in the world's main (first) docking bar:

`ModifierKeysMorph openInMainDockingBar`

## Q&A

### Does it use the colors I have selected in my theme?

No.  It uses colors chosen at semi-random at development time, through the
use of PizzaKeyMorph (which may be uploaded soon).

### What order are the keys represented by the Skitt&mdash;erm, traffic lights?

From `ModifierKeysMorph>>#initialize`:

```
self addMorphBack: (shiftKeyMorph := ShiftKeyIndicatorMorph new height: self indicatorHeight).
self addMorphBack: (ctrlKeyMorph := ControlKeyIndicatorMorph new height: self indicatorHeight).
self addMorphBack: (optKeyMorph := RawMacOptionKeyIndicatorMorph new height: self indicatorHeight).
self addMorphBack: (cmdKeyMorph := CommandKeyIndicatorMorph new height: self indicatorHeight).
```

### How do I remove it from my docking bar?

Get the halo to appear and click the "X" halo button.

### Why did you make this?

Sometimes when I cmd-tab out of a Squeak window and come back, I find that
one or more of my modifier keys seem "stuck".  I'd like to figure out why.

### What have you learned so far?

RFB is tricky.

X11 / XQuartz from Mac into Linux VM is tricky.

