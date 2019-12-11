simple keyboard
mouseDownPitch: midiKey event: event noteMorph: noteMorph

	midiPort ifNil: [^ super mouseDownPitch: midiKey-1 event: event noteMorph: noteMorph].
	noteMorph color: playingKeyColor.
	soundPlaying
		ifNil: [midiPort ensureOpen]
		ifNotNil: [self turnOffNote].
	self turnOnNote: midiKey + 23.
