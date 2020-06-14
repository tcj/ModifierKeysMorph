initialization
initialize
	super initialize.
	[ onColor := self defaultColor ] on: Error do: [:e | self inform: 'color not available' ].
	truthBlock := self defaultTruthBlock.