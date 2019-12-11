as yet unclassified
playV1
	soundColumn submorphs isEmpty
		ifTrue: [^ self].
	self
		setTimbreFromTile: (soundColumn submorphs first).
	(SampledSound bachFugueVoice1On: SampledSound new) play