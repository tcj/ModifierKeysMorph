stepping and presenter
step
	"stolen from Flasher"
	super step.
"	EventSensor default anyModifierKeyPressed"
	self truthBlock value
		ifTrue: [self color: (onColor alphaMixed: 0.5 with: Color black)]
		ifFalse: [self color: onColor]