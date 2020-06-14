initialization
initialize
	super initialize.
	"stolen from AbstractMediaEventMorph>>#initialize"
	
	self layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapCentering: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 2.
	"indicatorHeight is lazy-initialized by the way"
	self addMorphBack: (shiftKeyMorph := ShiftKeyIndicatorMorph new height: self indicatorHeight).
	self addMorphBack: (ctrlKeyMorph := ControlKeyIndicatorMorph new height: self indicatorHeight).
	self addMorphBack: (optKeyMorph := RawMacOptionKeyIndicatorMorph new height: self indicatorHeight).
	self addMorphBack: (cmdKeyMorph := CommandKeyIndicatorMorph new height: self indicatorHeight).
		
