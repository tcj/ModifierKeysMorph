initialization
defaultColor
	^ self preferredColors 
		detect: [:color | Color colorNames includes: color]
		ifFound:  [:foundColor | Color colorFrom: foundColor ]
		ifNone: [ self error: 'no preferred color choices available' ].