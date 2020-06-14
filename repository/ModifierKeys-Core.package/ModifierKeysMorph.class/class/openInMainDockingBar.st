as yet unclassified
openInMainDockingBar
	| bar height me | 
	[ bar := Project current world mainDockingBars first ]
		on: Error
		do: [ ^ self inform: 'no docking bars' ].
	height := bar height * 0.8.
	me := self basicNew
		indicatorHeight: height;
		initialize; 
		yourself.
	"cannot call the following in the cascade before #initialize?"
	me borderStyle: (BorderStyle simple baseColor: Color transparent; width: 1).
	me beTransparent.
	"find the search bar or the clock"
	bar submorphs detect: [:ea | 
		(ea knownName = 'searchBar' ) or: [ea respondsTo: #showSeconds: ]] 
			ifFound:[:neighbor | bar addMorph: me after: neighbor ]
			ifNone: ["Could not find neighbor morph to place myself. Go anywhere near the end."
				bar addMorphNearBack: me].
		
"
self openInMainDockingBar
"