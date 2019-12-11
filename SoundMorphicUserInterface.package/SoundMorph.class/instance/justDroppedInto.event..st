dropping/grabbing
justDroppedInto: aMorph event: anEvent
	| relPosition |
	relPosition := self position - aMorph innerBounds topLeft.
	relPosition := (relPosition x roundTo: 8) @ relPosition y.
	self position: aMorph innerBounds topLeft + relPosition.
	sound copy play.
	^super justDroppedInto: aMorph event: anEvent